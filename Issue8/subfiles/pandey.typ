//////////////////////////////////////////////////////////////////////////////
// EXAMPLE ARTICLE FOR INSCIGHT
// I HAVE TRIED MY BEST TO INCLUDE AS MANY EXAMPLES OF TEMPLATING AS POSSIBLE
// TO MAKE THE EXAMPLE AS COMPREHENSIVE AS I CAN.
// IF YOU FIND ANYTHING UNCLEAR OR HAVE THOUGHTS ON MAKING THIS MORE
// COMPLETE, LET ME KNOW.
//////////////////////////////////////////////////////////////////////////////

#import "/template-files/inscight-template.typ": * // this simply imports the layouts and helpers; this never changes

#let title = "How a Sleep Hormone Became a Drug Candidate for Wilson Disease" 
// title must be a string. Can contain formatting (bold, italic) or math (enclosed within ticks ``), 
// but we aim to keep the title as simple as possible

#let authors = "Raviranjan Pandey"
// author list is string or array of strings (in case of multiple authors).
// Can contain formatting (bold, italic) or math (enclosed within ticks ``), 
// but we aim to keep the title as simple as possible
// multi-author example: #let authors = ("Author 1", "Author 2")

#let affiliations = "Department of Biological Sciences, IISER Kolkata"
// affiliations has properties exactly same as authors
// multi-author example: #let affiliations = ("Insti 1", "Insti 2")

#let authorInfo = "*Raviranjan Pandey* is a final-year PhD student in the Department of Biological Sciences at IISER Kolkata. His curiosity about biological processes began during his undergraduate years, when learning how each biological process works at a molecular level gave him a deep sense of satisfaction, excitement, and happiness."
// authorInfo is meant for author bio and stuff. Has same properties as authors.
// string for single author, array of strings for multi author
// multi-author example: #let authorInfo = ("Desc 1", "Desc 2")

#let coverImage = "/covers/pandey.svg"
#let authorImage = "/authFaces/pandey.jpg"
// cover image and author image are kept in their respective folders, which must be reflected in the paths

#let received = (month: 12, day: 22, year: 2025)
// article finalising date

#let abstract = "*Wilson disease occurs due to toxic copper accumulation* and oxidative stress, yet current therapies only chelate excess copper but do not reduce oxidative stress. This study repurposes melatonin as a dual-action molecule that both chelates copper and modulates redox imbalance."
// String. Abstract/excerpt/pitch for the article. Formatting is possible and encouraged.

#let reviewedBy= ("Debanuj Chatterjee",)
// String or array of strings. Names of the editors/reviewers for the article.
// Same properties as authors.

#let refsFile = "/dataFiles/pandey.yml"
// String. Path of data file that contains list of references for present article.

#show: article.with(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  title: title, 
  authors: authors,
  authorAffiliations: affiliations,
  abstract: abstract,
  coverImage: coverImage,
  authorImage:authorImage,
  authorInfo: authorInfo,
  received: received,
  reviewedBy: reviewedBy,
  refsFile: refsFile,
  authorImageWidth: 90%,
  // breakAfter: (1,),
)


#dcap("I have always enjoyed solving problems and finding simpler ways to approach complex tasks, both in everyday life and in research. After completing my Master's degree, I sought research opportunities focused on the therapeutic aspects of diseases, in particular metabolic and neurodegenerative disorders. To pursue that research path, I joined the laboratory of Prof. Arnab Gupta in the year 2021. There in the initial days, while I was learning the fundamentals of copper metabolism an idea sparked in my head: could we develop better therapeutic molecules for Wilson disease, a disorder of copper metabolism? Thus, transforming this biological problem into a potential therapeutic solution became the primary driving force behind my PhD research.
")

== Understanding the problem — copper: vital for life, dangerous in excess

The use of copper is a common aspect of day-to-day life; it transports electricity through wires, provides utensils for domestic use, and has been used for tools and weaponry since ancient times. In living organisms, copper is also vital, as it forms essential cofactors for enzymes that drive various physiological processes including ATP production. It also supports immune defence by allowing the antimicrobial activity of specific immune cells and helps protect cells from oxidative damage through antioxidant enzymes[1]. 

This useful nature of copper, however, has a dangerous duality. Its capacity to change between two oxidation states Cu⁺ and Cu², while giving it biological utility, also has the potential to be toxic. Copper can produce extremely reactive free radicals during these redox transitions which can damage biomolecules such as proteins, lipids, and DNA that are essential for survival[2].

#img(path: "/images/pandey1.svg", portrait: true, width: 100%, caption: "Healthy individual liver Vs Cirrhotic liver in Wilson Disease")
Cells use specialized proteins, mainly Copper transporter 1 (CTR1), ATP7B, and ATP7A, to maintain an optimum copper level in the body, in order to prevent copper toxicity. While ATP7B and ATP7A export excess copper outside of the cells, CTR1 imports copper within cells. Whenever there is a disturbance in copper homeostasis, it leads to different copper metabolism disorders such as Wilson Disease[3].
Wilson disease is a rare genetic disorder (affecting about 1 in 30,000 people worldwide) caused by mutations in ATP7B, the liver’s main copper-exporting protein. When ATP7b fails to perform its exporting function, copper builds up in the liver and later in the brain, leading to symptoms such as liver damage (Fig 1), movement disorders, psychiatric changes, and eye discoloration known as Kayser–Fleischer rings (Fig 2)[4]. 
 
#img(path: "/images/Pandey2.jpg", caption: "Eye discoloration in Wilson Disease Patient. [Source: Wilson Disease Association]", portrait: true, position: top)
#img(path: "/images/pandey3.svg", caption: "Cell Viability assay showing cells lacking ATP7B are more sensitive to copper", width: 100%, portrait: true, position: bottom)
Current treatments for Wilson Disease mainly focus on removal of copper from the body. Chelating agents, such as Trientine and D-penicillamine, can lower the copper burden and slow the progression of Wilson disease but they do not directly address oxidative stress which is the major cause in Wilson disease. Use of chelating agents also worsen neurological conditions and cause systemic toxicity in some patients. This therapeutic gap raised a crucial question: rather than just using a copper chelator, can we develop a molecule that can both regulate copper and prevent the oxidative damage it causes?

That question became the seed of my PhD journey.

#img(path: "/images/pandey4.jpg", caption: "Due to excess copper accumulation, there is more oxidative stress in ATP7B#super[-/\-] HepG2 cells.", portrait: true, position: bottom)
When I began my doctoral research, I did not anticipate that a familiar, over-the-counter molecule, *melatonin*, would emerge as an unexpected candidate for my study. Melatonin is best known for regulating sleep and circadian rhythms. Meanwhile, the scientific literature pointed at melatonin's antioxidant capabilities and its ability to bind with metal ions. Recent clinical observations revealed something far more interesting: disruptions of normal sleep patterns often accompany the course of Wilson disease[5]. Therefore, a natural question to ask was: *could this endogenous, safe molecule, melatonin, have a larger role in our body other than regulation of sleep?* Can it be repurposed for the management of Wilson Disease? What started as a physiological curiosity quickly morphed into a deeper biochemical question: could melatonin interact directly with copper, other than in its role as a hormone? Could it stabilize redox imbalance and mitigate oxidative stress, the central drivers of tissue damage in Wilson disease? This hypothesis, a mere intellectual itch at the stage, crystallized as the very foundation of my PhD work. This was followed by a scientific odyssey, ranging from cell biology, redox chemistry, biophysical techniques, and nanotechnologies, arriving at organism-level models. Herein, the article traces how a small idea was tested, refined, and then transformed into a coherent scientific argument; a manifestation of how, during a PhD, following a question rather than a predefined outcome shapes the arc.

== The first clue: a cell line that tells a story
To study copper toxicity, we created a simple disease model by using CRISPR to delete ATP7B in a human liver cell line (HepG2). Because the liver is the main organ affected in Wilson disease and ATP7B is its key copper exporter, removing this gene causes copper to accumulate in HepG2 cells—closely mimicking the Wilson disease phenotype in ATP7B#super[-/\-]\_HepG2. Using this model, we compared the copper toxicity of the normal liver cell line (WT_HepG2) with cells lacking ATP7B (ATP7B#super[-/\-]\_HepG2). When both were exposed to copper, cell survival dropped in each case, but the ATP7B-deficient cells were far more sensitive. Without the ability to export copper, these cells accumulated higher copper levels and suffered more severe damage (Fig 3). 

We compare the oxidative stress level of ATP7B#super[-/\-]\_HepG2 with WT_HepG2 cells, we found increased level of oxidative stress, which is the primary reason for the sharp decrease in cell viability ATP7B#super[-/\-]\_HepG2, following the contemporary cellular model for Wilson Disease (Fig 4).

== A surprising therapeutic candidate

Based on both our observations and earlier studies, oxidative stress emerged as a major candidate that could drive of tissue damage in Wilson disease[6]. 

#img(path: "/images/pandey5.jpg", caption: "Cell Viability has improved after melatonin treatment.", portrait: true, position: top)
#img(path: "/images/pandey6.jpg", caption: "Melatonin markedly attenuates copper-induced oxidative stress, demonstrating superior protective efficacy compared to D-pen and NAC.", portrait: true, position: bottom, width: 80%)
This led us to rethink conventional treatment strategies. Instead of focusing only on copper removal, we asked whether additional antioxidants property might offer a more logical and complementary therapeutic approach or not. From the literature survey, one molecule stood out i.e., melatonin. Best known for regulating sleep, melatonin is also an endogenous, safe, and FDA-approved antioxidant. We postulated that this well-known molecule might be repurposed to combat the copper-induced toxicity of Wilson disease[7].  When we checked melatonin’s potential to combat copper toxicity, it dramatically improved cell viability (Fig 5). Melatonin also decreases oxidative stress (Fig 6) caused by copper when tested in our cellular models. Surprisingly, it outperformed both the well-known antioxidant N-acetylcysteine (NAC) and the common Wilson disease medication D-penicillamine(D-Pen). Melatonin not only lowered oxidative stress but also more effectively modulated key cellular defense pathways, including the Nrf2–HO-1 axis as depicted from Nrf2 nuclear translocation. In copper treated cells, Nrf2 nuclear localization was high but melatonin treatment has reduced it to basal level. (Fig 7).

#img(path: "/images/pandey7.png", caption: "Melatonin exhibits the strongest suppression of Nrf2 nuclear localization, outperforming D-Pen and NAC.", portrait: true)
However, melatonin’s protective effects seemed too strong to be explained by antioxidant activity alone. This prompted a closer look at its chemical structure, which contains nitrogen and oxygen atoms capable of binding metal ions (Fig 8). Inspired by this chemical intuition, we looked into the possibility of melatonin interacting directly with copper. In fact, we found that melatonin binds copper in an energetically favourable way with quantifiable affinity, demonstrating an unexpected chelating ability (Fig 9) with kd value of 3.36 × 103 M-1 (Fig 10). This discovery changed the course of our investigation. Beyond its function as an antioxidant, melatonin evolved into a dual-action molecule that could directly control excess copper and reduce oxidative stress. This conceptual change encouraged us to test the theory at the level of entire organisms, which advanced our work beyond cell-based experiments and brought us closer to therapeutic relevance.

#img(path: "/images/pandey8.png", caption: "Structure of melatonin.", portrait: true, position: top)
#img(path: "/images/pandey9.jpg", caption: "Gibbs free energy for binding sites of melatonin with copper", portrait: true, position: bottom)
== Extending the idea beyond cells: validation in organisms

To ensure that our results were not merely obtained on cellular model, we chose organism models that included Zebrafish and _C. elegans_ to test melatonin efficacy against copper toxicity. These organisms can be used for the assessment of copper toxicity. In zebrafish embryos, excessive levels of copper caused a significant increase in oxidative stress as observed in increase of fluorescence intensity of CellRoX orange. Increase in CellRoX intensity is directly proportional to increase in oxidative stress. (Fig 12). We also observed decrease in copper induced cell death as measured by flow cytometry using Annexin V-PI dye. (Fig 11). Remarkably, both effects were almost completely reversed by melatonin pretreatment, restoring cellular health in the early phases of development. We discovered a similar protective effect using _C. elegans_ mutants, which lack an essential copper transporter. Copper built up to hazardous levels in these worms, but melatonin treatment dramatically decreased copper burden (Fig 13) and oxidative stress (Fig 14), which closely matched our cellular findings. These models together proved that melatonin’s anti-copper action is not confined to isolated cells. Rather, melatonin’s protective potential is retained at even larger scales of life, from cells to organisms, and this further strengthens melatonin’s potential therapeutic utility in Wilson disease.
#img(path: "/images/pandey10.svg", caption: "Melatonin interacts with Cu#super[2+] with an association constant (Ka) of `3.36 times 10^3 M^(-1)`.", portrait: true, position: top)
#img(path: "/images/pandey12.jpg", caption: "Annexin V/PI flow cytometry of embryo-derived single-cell suspensions shows Cu increases total cell death, which is reduced by melatonin.", portrait: true, width: 60%, position: bottom)

== Nanocapsule engineering: bridging chemistry and biology for better therapy
Although melatonin is remarkably safe, it has a major limitation as a drug: a short half-life in the bloodstream. To overcome this, we collaborated with chemists to design redox-responsive melatonin loaded polymeric nanocapsules (MNC) capable of carrying and protecting melatonin. Encapsulating melatonin transformed how it behaves in the body. The nanocapsules increased its stability. (Fig 15), enabling the drug to reach its target in a much more effective way. More importantly, these nanocapsules were engineered to be responsive to the cellular environment, when oxidative stress is high. When nanocapsules experienced high levels of intracellular glutathione-a signature of oxidative stress-they released melatonin exactly where and when needed (Fig 17).
This targeted release dramatically enhanced melatonin's effectiveness, up to almost a three-fold increase in scavenging reactive oxygen species (Fig 16). In doing so, nanotechnology transformed melatonin from a simple dietary supplement into a smart, responsive therapeutic bridge between chemistry and biology that can be used to improve the treatment potential of Wilson disease.

#img(path: "/images/pandey11.png", caption: "Representative Spinning-disk confocal show increased CellROX fluorescence with Cu (500 µM), which is reduced by melatonin co-treatment.", width: 100%, position: top)


#img(path: "/images/pandey13.jpg", caption: "Melatonin helps _C. elegans_ to alleviate free copper.", portrait: true)
== Revisiting the big question
Over the course of my PhD, this is a story of how melatonin evolved. An originally very simple question, "could melatonin help manage Wilson disease?" - led to a more nuanced answer: melatonin emerged as a dual-function molecule that could selectively bind labile copper and simultaneously suppress copper-driven oxidative stress. Its therapeutic potential increased when delivered through redox-responsive nanocapsules.

#img(path: "/images/pandey14.jpg", caption: "Melatonin treatment rescues cua-1 from oxidative stress.", portrait: true, position: bottom)
So, melatonin—an indoleamine with a recognized role in regulating the sleep-wake cycle — underwent a radical transformation to a next-generation candidate capable of treating both metal overload and the subsequent redox imbalance. Moving ahead in time, the current discovery now paves the way for the design of next-generation molecules that can treat Wilson disease and other related conditions of metal and redox imbalances. By regulating both metal homeostasis and redox equilibrium simultaneously in future medications, they can potentially treat various complex diseases in a holistic way that current single-target therapies cannot. One such is melatonin, and the nanocapsules are just one way of delivering it. The broader idea—integrating chemistry, biology, and nanotechnology to restore balance in diseased cells—can be applied across many pathologies. This, is the journey of that idea and the scientific story behind my PhD.

== Want to know more?
This article is based on our original research published as:
Repurposing Melatonin’s Therapeutic Potential in Wilson Disease: Addressing Copper Overload and Redox Imbalance (Pandey et al., Redox Biology, 2025, DOI: https://doi.org/10.1016/j.redox.2025.103971).

#img(path: "/images/pandey15.jpg", caption: "MNC show improved serum stability, ensuring sustained melatonin availability.", portrait: true, position: top)
#img(path: "/images/pandey17.png", caption: "MNC is more efficient than free melatonin in reducing oxidative stress.", portrait: true, position: bottom)
#img(path: "/images/pandey16.png", caption: "MNCs exhibit redox-triggered release in response to GSH.", portrait: true, width: 60%, position: top)

#colbreak()
