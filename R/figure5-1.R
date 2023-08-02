library(dplyr)
library(MASS)
library(ggplot2)
library(patchwork)

load(here::here("R/simulated_distances.rda"))
load(here::here("R/curation_data.rda"))

# Load plot of exponential model and simulation results for summed 
# shorline dates
load(here::here("R/expplts.rda"))

# Find gamma distribution used to describe the vertical relationship between
# sites and shoreline 


# Vertical distances older than 2500 BCE, forcing negative values to zero
vertdist <- distances %>%
  filter(year <= -2500 & rcarb_cor == "t") %>%
  mutate(vertdist = ifelse(vertdist < 0, 0, vertdist))

# Add a constant of 0.001 to fit model
vertdist$vertdist <- vertdist$vertdist + 0.001

gammafit <- fitdistr(vertdist$vertdist, "gamma")
gammadat <- data.frame(
  x = vertdist$vertdist,
  px = dgamma(vertdist$vertdist, shape = gammafit$estimate[1],
              scale = 1/round(gammafit$estimate[2], 3))) # 

p1 <- ggplot(data = gammadat) +
  geom_line(aes(x = x, y = px)) +
  scale_y_continuous(limits = c(0, 0.3)) +
  labs(x = "Meters above sea level", y = "Density") +
  theme_bw()


# Find mean LOESS model across 1000 simulations of the curation index
simresults <- data.frame()
for(i in 1:length(unique(curation$sim))){ 
  sim <- curation[curation$sim == unique(curation$sim)[i],]
  model <- loess(index ~ age, data = sim)
  xrange <- range(sim$age)
  xseq <- seq(from = xrange[1], to = xrange[2], length = 80)
  pred <- predict(model, newdata = data.frame(age = xseq), se = TRUE)
  y = pred$fit
  ci <- pred$se.fit * qt(0.95 / 2 + .5, pred$df)
  ymin = y - ci
  ymax = y + ci
  loess.DF <- data.frame(x = xseq, y, ymin, ymax, se = pred$se.fit)
  loess.DF$id <- 1:nrow(loess.DF) 
  
  simresults <- rbind.data.frame(simresults, loess.DF)
}

mean_loess <- simresults %>% 
  group_by(id) %>%
  summarize(x_mean = mean(x),
            y_mean = mean(y),
            ymin_mean = mean(ymin),
            ymax_mean = mean(ymax))

names(mean_loess) <- c("id", "x", "y", "ymin", "ymax")

p2 <- ggplot() +
  geom_point() +
  geom_smooth(aes_auto(mean_loess), data=mean_loess, stat="identity") +
  labs(x = "BCE", y = "Curation index") +
  theme_bw()


