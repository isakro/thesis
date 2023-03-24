# Modelling the Norwegian Mesolithic

The last chapter laid out the foundation for what can constitute components of a model-based archaeology. This chapter will explore how casting the papers of the thesis in this light can help elucidate assumptions and further lines of inquiry associated with the arguments made in the papers. Each paper is first presented using an evidential argument schema, following @toulmin1958 [see @chapman2016]. Subsequently, a suggested causal model for the main components of each paper is presented in the form of directed acyclic graphs [DAGs, e.g. @morgan2015].

## Evidential argument schema

In the presentation of the papers below, these schemas will not be complete, but draw on what I view as the most central components of the arguments. Further nuances and caveats can be found in prose in the papers themselves, while the data and code published with each paper also offer further sources that can be scrutinised for additional underlying assumptions and potential inconsistencies. 

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figures/argument_ex} 

}

\caption{Outline of Toulmin's argument schema. The figure is based on Chapman and Wylie (2016:fig.1.1, 33--40) and Toulmin (1958: 94--145).}(\#fig:argument)
\end{figure}



## Directed acyclic graphs

No extensive presentation of causal models or DAGs is given here [see e.g. @morgan2015], but it is necessary to establish some terminology. DAGs can be used to represent a causal graph, where the term directed refers to the rule that causal effects cannot be bi-directional, that is, causes points to effects. Acylic refers to the rule that no directed path can form a closed loop. To illustrate the concept, a simple DAG is given in Figure \@ref(fig:dag). 
The direction of the arrows in the model illustrates what variables are believed to impact other variables. An arrow going directly between two variables means that there is a direct effect. A is therefore said to have a direct effect on both B and C in Figure \@ref(fig:dag). C also has a direct effect on A, but as A impacts both, A is a confounding variable. That is to say, part of the impact of B on C may simply be the result of A affecting both. Finally, the effect of a variable that goes through one or more other variables is said to be mediated by the intervening variables. Part of the effect of A on C is indirect as it follows from its effect on, which in turn impacts C directly. 

DAGs are therefore an effective tool for clarifying research questions, for explicating relevant concepts, and to identify assumptions. Furthermore, provided the variables can be sensibly operationalised, DAGs offer a precise statement of how the interrelation between variables should be modelled statistically. 


If there is a direct effect between A and B, but variable Z also impact each of these, Z is said to be confounder. An arrow from variable A to B that go through one or more other variables indicate that the effect of A on B is mediated by the intermediate variables. A central element of this model is that the effect of the other variables on the distance between site and shoreline are all mediatated through the exposure of the site to the surroundings and accessibility to and from the site.

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figures/dag_ex} 

}

\caption{Example of a simple causal model presented as a directed acyclic graph.}(\#fig:dag)
\end{figure}

## Modelling the relationship between Mesolithic sites and the prehistoric shoreline

In the first paper of this thesis I have proposed a method for shoreline dating Mesolithic sites on the Norwegian Skagerrak coast, based on an empirically derived model of the relationship between the sites and the prehistoric shoreline [@roalkvam2023]. This was based on simulating the distance between sites and the shoreline using 66 ^14^C-dated sites and local reconstructions of shoreline displacement. The study found the sites to typically be located on or close to the shoreline up until some time just after 4000 BCE, when a few sites are located further from the shoreline. At around 2500 BCE there is a clear break, and the sites are from this point on situated further from and at variable distances from the shoreline. Building on these findings, the likely elevation of sites dating to earlier than 2500 BCE were, in aggregate, found to be reasonably approximated by the gamma function given in Figure. This is the model that forms the foundation of the proposed method for shoreline dating that is released as an R package with Paper 2.



\begin{figure}

{\centering \includegraphics[width=13.33in]{figures/toulmin_p1} 

}

\caption{Central evidential arguments underlying Paper 1 presented as a Toulmin-like argument schema inspired by Chapman and Wylie (2016).}(\#fig:t1)
\end{figure}

In one sense this model is instrumental as the *reason* for the location of the sites has not been considered explicitly. By combining the present altitude of a site, its likely elevation above the shoreline when it was in use, and local shoreline displacement curves, this model makes it possible to assign a probabilistic absolute shoreline date to coastal sites in the region. On a realist view, however, it is still true that the treatment of the data and the conception of the model followed from an underlying belief of what mechanisms shaped the patterns in the data deemed relevant. While the model and derived method can be viewed as a instrumental dating tool, they are determined by the proclivity for sites to be located on the shoreline. As such, they are likely to be tightly integrated with both overarching cultural developments, as well as behaviour at the site level. By extension, the multitude of factors that can have shaped the site-sea relationship on the large and small scale, both temporally and spatially, offers a challenging causal web of possible interacting effects that ultimately determine this relationship. Having first derived this largely instrumental model, it gives opportunity to further test it's correspondence with other empirical data, and explore and expound underlying theoretical assumptions and implications. 

To illustrate this, below I have constructed a suggestion for a causal model concerning what determines the vertical distance between coastal Mesolithic sites and the shoreline in south-eastern Norway. 

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figures/dagitty_p1} 

}

\caption{Sugggested causal model for the drivers behind the relationship between site location and the prehistoric shoreline in Mesolithic south-eastern Norway.}(\#fig:d1)
\end{figure}


A likely important factor for how exposed and accessible a site could be is the purpose of the visit to the site. The purpose of the visit is therefore given a direct effect on exposure and accessibility. For example, is the site meant to be used as a stop to rest and repair tools, to be used as a hunting camp or a location from where to acquire raw-materials for tool-production? Is it a base-camp for the entire residential group from where further forays are made, or is it meant to be a meeting place for several groups? The purpose of the stay is likely also to impact the length of the stay, which in turn might have implications for how close to the shoreline the site is established. A longer stay could for example mean that the site is more withdrawn from the shoreline, so as to make sure storm surges do not reach the site. 

Means of travel is also included in the model. Most travel is assumed to be done by boat in this period, which means accessibility to the site from the sea is likely to be of concern, as well the ability to safely beach and store the boats. However, some travel was also likely done by foot, for example from a base-camp to a site close by for gathering and processing resources such as shellfish, where the need for the carrying capacity offered by boats might not have been necessary. Travel by sledge on the ice is also a possible alternative. Not having to land boats could presumably have implications for how exposed and accessible a location could be.

The season also presumably has implications for how often one had to establish camp, possibly reducing mobility in colder periods. The season might also have implications for the kinds of dwelling structures that were necessary to erect, and likely determines the kinds of resources that were exploited, thus potentially impacting the purpose of the stay. The season is also believed to have implications for the degree of wind and wave-action at a location, thus affecting the exposure of the site to the elements, and impacting accessibility. Season is therefore given a direct effect on all of these variables.

Some variables and nuance that have been left out of the model are worth commenting on. The weather is for example likely to impact a lot of these factors, but is near if not entirely impossible to determine archaeologically. Furthermore, the purpose of the stay is here indicated using a single variable, but a stay need not, or perhaps likely did not have a single purpose. A simple example might be a case where multiple kinds of resources were to be exploited from a site. A possible alternative would be to operationalise these as individual variables, where for example the magnitude of seal-hunting and the gathering of hazelnuts to be done from the site is kept as separate variables. These would in turn likely be determined by factors such as the density of these resources in the landscape, their caloric return, their cost in terms of handling-time and -energy, and the potential prestige associated with hunting a specific species or the accruement of enough food to allow for sharing. Furthermore, the entire picture is also further complicated by other latent variables that are left of the model. Social structure, overarching mobility patterns, territoriality, group size and composition, as well as religious beliefs could all impact land-use, site-structure and ultimately how sites were positioned relative to the sea.  

However, I still believe the model forms a reasonable starting point and that it has the potential to reveal some important and true causal determinants for the site-sea relationship. A central challenge is of course how these factors are to be operationalised and determined archaeologically. The exercise of setting up the causal model is nonetheless useful in its own right, if not simply by forcing me to think through and concretise what elements I believe are important and how these are related. It also forms a framework that dictates how these variables would have to be handled statistically. Furthermore, with reference to the concept of inference to the best explanation presented in the last chapter

Some assumptions concerning the directionality of influence between the variables are made here, which might be discussed. For example, it is assumed here that the length of the stay influences how exposed the location is. This in a sense places primary weight on the planning of the inhabitants. One could envisage a situation where arrival in fair weather leads to a case where a worsening of the weather could prove that the location was in fact too exposed, and the site is moved. The purpose of the visit did in this case determine what was initially an acceptable degree of exposure, but, although not modelled here, the purpose of the visit might change with the weather.

### Operationalising the site-sea model

A central challenge for the proposed model is of course how the different variables can be measured. Determining the season for when a site was in use is possibly an insurmountable challenge, but some avenues for investigation could exists. @solheim2016 for example speculated whether what they identified as a predominance of fish on sites located in outer coastal areas as opposed to terrestrial osteological material at sites in inner coastal areas, could reflect seasonal movement patterns. As bone is typically poorly preserved in the acidic Norwegian soils, this is a challenging line of evidence to draw on, but if this could be shown to consistently correspond to other site features, it could possibly be extended to sites were bone is not preserved. 

Similarly challenging is determining the means of travel. While boats can be reasonably be assumed to have been the main means of transportation throughout the Mesolithic, alternatives has to my knowledge not been extensively explored in Norwegian archaeology. Although the relevance of this variable is therefore not certain, and these suggestions remain speculative, one line of reasoning could be an analysis the topographic location of the site, possibly also combined with insights into resource use and site function.

When it comes to measuring the length of stay, it was suggested the third paper of this thesis [@roalkvam2022], as presented in more detail below, that aspects of the lithic inventories reflect the duration of stays at the sites under study. Assessing the distance between site and shoreline when accounting for these measures could therefore offer a way forward in this regard. While length and purpose of stay are likely to be tightly integrated, the analysis of lithic inventories also offer a clear possibility for establishing 

The exposure of Mesolithic sites was investigated in @roalkvam2020 [see also], using viewshed analysis to estimate visibility, and the estimation of wind-fetch to measure exposure to wave-action. A third potential way to handle exposure could be to devise a method for estimating the distance from the site to the outer-most coastal feature at the time the site was in use. Although these measures have seen limited or no previous application in Norwegian archaeology, they offer clear ways forward with which to investigate these issues.

Finally, accessibility is another challenging variable to operationalise that has not been explored much in the literature. Good landing places for boats are often pointed out in excavation reports and in the literature, but precisely what this entails is not as easy pin down. A common feature appears to be a gentle slope towards the prehistoric shoreline, which can readily be explored in a GIS. Presumably the exposure of the location to wave-action is another relevant measure here, and so there might be ways to fruitfully explore this as well.

As it stands the most readily implemented explanatory variables of the model is therefore the duration of the stays at the site, their exposure to surrounding landscape, and potentially the accessibility to the sites. The most challenging are those of seasonality and means of travel in relation to the sites. In conclusion, this exercise does nonetheless demonstrate the value of suggesting an explicit causal model, and has laid out some potential avenues for further interrogating the issue of the relationship between coastal Mesolithic sites and the contemporaneous shoreline.

## Modelling the technological expediency of lithic assemblages 





Focusing first on its instrumental value, shoreline dating will often provide the highest resolution date that one can hope to achieve for a site, given that material to radiocarbon date is quite rare due to taphonomic loss, and as established typological frameworks in the region operate on the millennial scale. By facilitating a dating method, the model can thus be drawn on to explore traditional long-term chronological questions, such as the frequency of sites throughout the period [@roalkvam], the assessment of typological frameworks, or the timing and spread of various cultural phenomena, to give some examples. Furthermore, the finding that sites tend to be located further from the shoreline from around 4000 BCE and 2500 BCE, correspond with major socio-economic developments, where these dates roughly correspond to the first introduction and subsequent firm establishment of agriculture in the region. Although it still remains to be tested on data independent from where it was derived, the instrumental utility of the model is therefore clear.  

However, as it is difficult to determine the longevity of use and re-use of the open-air sites that dominate the Mesolithic record in the region, the number and duration of settlement events being dated in each instance is not clear. Previous consideration of these questions typically range from characterising the sites as the result of short visits of only a few hours up to a few months, and range from single visits to seasonal re-visits over a few decades---possibly centuries in the most extreme instances. However, given the resolution that shoreline dating provides, even at its best, the method does not by itself provide a precision high enough to weigh in on this issue, and can therefore not inform the number or length of stays within the determined date range. This has implications both for the questions that the method can be used to answer, and causal drivers behind site location that we can hope to disentangle using the model, given that these dimensions are likely to have been of importance for the location of the site relative to the sea.   [e.g. @bailey2007; @perrault2019]

Having established the model also opens up for a shifting of perspective back and forth from the large to the small scale, and from shoreline date to site location relative to the shoreline. Such an approach can illuminate implications of the model and its workings, and, in turn, potentially also feed back to and lead to a refinement of the model. One such example is now given by considering the location of the site Pauler 1, relative to sea according to the model.

The mean elevation of the site is masl. Based on the likely elevation of the site when it was in use, as informed by the shoreline model, the resulting shoreline date is. The benefit of having a model where all three parameters are clearly defined is that this allows us to shift perspective between the date of the use of a site and the implication this has for the relative position of the shoreline. Thus, looking now instead back from the calendar scale (the x-axis in Figure), to the likely elevation of the site above sea (the exponential function on the y-axis in Figure), and combining this with the elevation of the sea-level above it's present altitude at this time (represented by the displacement curve in Figure)--effectively rearranging the equation--thus allows for an instantiation of the model implications for individual sites in the spatial domain. In Figure, this is done by simulating the sea-level that the shoreline date implies.

Given the commutative nature of the relationship between shoreline date and the elevation of the site above sea-level, it is possible to translate directly between these dimensions and treat the resulting sea-level 

The model, while a reasonable approximation of the relationship between sites and shoreline in aggregate, could still be substantially off when applied to individual sites, as was demonstrated here by the in-depth analysis of Pauler 1. However, this model failure has to be qualified. First, the articulation and exploration of *how* the model is wrong has allowed for a further understanding of both the site and the model. Furthermore, this can also function in a step towards generating causal models explaining why, in any given case, the site was located as it was. While an immensely challenging task, this would   

The concept of shoreline dating touches upon such a wide range of issues that it can in sense be seen as a microcosm of archaeological inquiry as such. While physical sciences underlie the framework, as it is ultimately dependent on reconstruction of shoreline displacement, the question is inherently social and cultural. Furthermore, perspectives from a vantage of social and humanistic can not only be used to derive cultural significance from the observed patterns, but these can also be used to further improve the method for shoreline dating. My view is that this is defining of archaeology as a whole. While here nested in model-based archaeology, which I found a useful framework with which to think about these issues, I also think this illustrates the heterogeneous nature of archaeology and the value of drawing on multiple strains of evidence and perspectives. The iterative move between aggreagte model and individual cases could just as easily have been cast within a hermeneutic understanding of archaeological research. This also highlights the inadequacy of attempting to understand archaeological research as being situated somewhere on a scale between more or less scientific or humanistic, more or less processual or post-processual, as these are simply unable to capture the necessary nuance of archaeological inquiry.   