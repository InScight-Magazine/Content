//////////////////////////////////////////////////////////////////////////////
// EXAMPLE ARTICLE FOR INSCIGHT
// I HAVE TRIED MY BEST TO INCLUDE AS MANY EXAMPLES OF TEMPLATING AS POSSIBLE
// TO MAKE THE EXAMPLE AS COMPREHENSIVE AS I CAN.
// IF YOU FIND ANYTHING UNCLEAR OR HAVE THOUGHTS ON MAKING THIS MORE
// COMPLETE, LET ME KNOW.
//////////////////////////////////////////////////////////////////////////////

#import "/template-files/inscight-template.typ": * // this simply imports the layouts and helpers; this never changes

#let title = "Overview of Asymmetric Synthesis & the Development of a Hybrid Catalytic System" 
// title must be a string. Can contain formatting (bold, italic) or math (enclosed within ticks ``), 
// but we aim to keep the title as simple as possible

#let authors = "Dr. Satavisha Kayal"
// author list is string or array of strings (in case of multiple authors).
// Can contain formatting (bold, italic) or math (enclosed within ticks ``), 
// but we aim to keep the title as simple as possible
// multi-author example: #let authors = ("Author 1", "Author 2")

#let affiliations = "Assistant Professor, IISER Pune"
// affiliations has properties exactly same as authors
// multi-author example: #let affiliations = ("Insti 1", "Insti 2")

#let authorInfo = "*Satavisha* was born and raised in Sarisha, South 24 Parganas, West Bengal. Satavisha earned her doctoral degree in 2017 at IISc, Bangalore, specializing in Asymmetric Organic Synthesis. After her PhD, she joined as a postdoctoral fellow at Tohoku University, Japan, and later worked at the University of Florida, USA, as a postdoctoral researcher. Before joining IISER Pune in 2025, Satavisha served as an Assistant Professor at IIT Dharwad for a year.\ *Email*: satavisha\@iiserpune.ac.in.\ *Website*: https://skayal3.wixsite.com/skayal"
// authorInfo is meant for author bio and stuff. Has same properties as authors.
// string for single author, array of strings for multi author
// multi-author example: #let authorInfo = ("Desc 1", "Desc 2")

#let coverImage = "/covers/kayal.svg"
#let authorImage = "/authFaces/kayal.png"
// cover image and author image are kept in their respective folders, which must be reflected in the paths

#let received = (month: 6, day: 5, year: 2026)
// article finalising date

#let abstract = "From the mirror-image molecules that distinguish medicines from poisons to the catalysts that make modern drug synthesis greener and more efficient, chirality lies at the heart of chemistry. Discover how hybrid catalytic systems are opening new frontiers in asymmetric synthesis, enabling the sustainable creation of life-saving molecules with remarkable precision."
// String. Abstract/excerpt/pitch for the article. Formatting is possible and encouraged.

#let reviewedBy= "Debanuj Chatterjee"
// String or array of strings. Names of the editors/reviewers for the article.
// Same properties as authors.

#let refsFile = "/dataFiles/kayal.yml"
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
  // authorImageWidth: 100%,
  breakAfter: (5,),
)
// note the two optional arguments that have sensible default values and can be ignored.
// authorImageWidth: width of author image. Set to 100% by default. decrease if image becomes too big to fit
// breakAfter: array of integers. adds a column break after each of the provided integers. Used for balancing
// columns of the page. For example, if the final page contains 10 references that fill the left column and
// leave the right column empty, setting breakAfter: (5,) will add a column break between the 5th and 6th
// references and shift references 6-10 to the right column, spreading the content evenly across columns.
// By default it is set to (-1,) which means no column break is added by default. You will need to adjust this
// depending on the content.

== Overview

#quote("Life is dominated by dissymmetrical actions. I can foresee that all living species are primordially, in their structure, in their external forms, functions of cosmic dissymmetry.")
#v(-0.4cm)
#align(right)[-- Louis Pasteur]

#dcap("These visionary words, written by Louis Pasteur more than 100 years ago, have had a profound impact on the development of stereochemistry. The term “dissymmetry” is now known as “chirality” in modern chemistry or “handedness”. Like a pair of hands, the two enantiomers of a chiral compound are mirror images of each other that cannot be superimposed. In 1801, French mineralogist Haüy first observed the phenomenon of chirality in quartz crystals. Later, in 1848, Louis Pasteur discovered clear evidence of chirality, demonstrating that it can rotate plane-polarized light. #super[2]")
// the first paragraph must be passed into the dcap function to insert a drop cap at the beginning of the article.

#img(
  path: "/images/satavisha1.png",
  caption: "Two enantiomers of a chiral compound are mirror images of each other, that cannot be superimposed",
  position: top,
  // width: 50%,
  portrait: true
)

#img(
    path: "/images/satavisha2.png",
    caption: "(R)-(+)-asparagine has sweet taste whereas \\ (S)‑(−)-asparagine is bitter",
    position: bottom,
    width: 100%,
    portrait: true
)

Since then, chirality has been recognized as a fundamental property of most three-dimensional objects. Despite having identical physicochemical properties—such as melting point, solubility, chromatographic retention time, and infrared (IR) and nuclear magnetic resonance (NMR) spectra—enantiomers can behave differently under external chiral influences. Furthermore, different enantiomers may exhibit distinct tastes, odors, and, most importantly, varying pharmacological effects. This underscores the critical significance of chirality in areas such as drug development and molecular biology. For example (R)-(+)-asparagine has sweet taste whereas (S)‑(−)-asparagine is bitter (Figure 2). #super[3] 

Naturally occurring biological macromolecules in living systems mostly exist in a single enantiomeric form. Consequently, only the biologically active enantiomer can effectively interact with its specific receptor. Thus, the two enantiomers of a drug often interact differently with receptors. Since human enzymes and cell surface receptors are themselves chiral, each enantiomer of a drug may be activated, absorbed, or degraded differently. 

#img(
    path: "/images/satavisha3.jpg",
    caption: "Two enantiomers of a drug often interact differently with receptors",
    position: top,
    width: 100%,
    portrait: true
)

For example, dopamine is an effective drug for Parkinson’s disease and is formed from (S)-(−)-DOPA via in vivo decarboxylation by the enzyme (S)-(−)-DOPA decarboxylase. This enzyme discriminates between enantiomers and specifically decarboxylates only the (S)-enantiomer of DOPA. Therefore, it is essential to administer DOPA in its pure (S)-form. Administration of racemic DOPA (rac-DOPA) would result in the accumulation of (R)-(+)-DOPA, as this enantiomer cannot be metabolized by the human body. #super[4]

#img(
    path: "/images/satavisha4.png",
    caption: "Dopamine is formed from (S)-(-)-DOPA",
    position: bottom,
    width: 60%,
    portrait: true
)

Therefore, the enantiomeric discrimination is a remarkable feature of biological systems, making chirality a central concept in organic synthesis. As a result, the preparation of drugs, natural products, food additives, and flavoring agents in enantiopure form is highly desirable. Traditionally, enantiomerically pure compounds are obtained by resolving racemic mixtures, but this approach is inefficient because the undesired enantiomer must be discarded. To address this issue, asymmetric synthesis was developed, allowing achiral or prochiral starting materials to be converted into chiral products using a chiral environment, thereby enabling the efficient production of enantioenriched compounds.

Asymmetric synthesis can be classified into four major categories: (a) substrate-controlled methods, (b) auxiliary-controlled methods, (c) reagent-controlled methods, and (d) catalyst-controlled methods. The first three methods require either valuable chiral reagents or chiral substrates in stoichiometric amounts, which makes the processes expensive. In contrast, catalyst-controlled asymmetric synthesis—often employing chiral catalysts—offers a more economical and sustainable approach, as only catalytic amounts of the chiral source are needed. As a result, catalyst-controlled methods have become increasingly important in the development of practical and scalable asymmetric syntheses.

Catalyst-controlled methods can be classified into three main categories based on the nature of the catalysts used: 

+ biocatalysis
+ metal catalysis and 
+ organocatalysis.

My research interests centre on multiple facets of organocatalysis, encompassing Brønsted acid catalysis, Lewis base catalysis, and phase-transfer catalysis. I am also dedicated to advancing novel hybrid catalytic systems by integrating metal catalysts with organocatalysts.

== Development of a hybrid catalytic system

Much effort has been devoted to the efficient and selective synthesis of enantioenriched molecules due to the growing demand for a wide range of chiral organic compounds, including pharmaceuticals and functional materials. The development of advanced molecular transformations is crucial for enabling rapid and effective access to these enantioenriched molecules with high efficiency and selectivity. Furthermore, the construction of environmentally benign systems—thereby minimizing waste and conserving energy—should be a priority in their production. In this context, catalysis using small organic molecules, known as organocatalysis, has garnered significant attention over the past two decades. Organocatalysis enables efficient acceleration of fundamental organic transformations using catalytic amounts of organic molecules, offering a sustainable and versatile approach in modern synthetic chemistry.

#img(
    path: "/images/satavisha5.png",
    caption: "A wide range of enantioselective transformations has been successfully accomplished using \\ chiral phosphoric acids (I) and their derivatives",
    position: bottom,
    width: 100%,
    portrait: true
)

Among the various organocatalysts developed, chiral Brønsted acid catalysts—especially chiral phosphoric acids—have received significant attention. A wide range of enantioselective transformations has been successfully accomplished using chiral phosphoric acids (I) and their derivatives. #super[1] Pioneering work by Professors Akiyama and Terada has established the foundation of this research area, and they continue to make substantial contributions that expand the scope of chiral Brønsted acid catalysis.

In contrast, catalysis by transition metal complexes has been applied to a broad range of organic transformations and occupies a privileged position in synthetic organic chemistry. Significant research on catalysis has centred on the use of metal complexes to activate a variety of chemical bonds. In recent years, with the idea of taking advantage of both of these catalytic approaches, metal complexes and organic molecules have been combined in cooperative binary catalytic systems, namely hybrid catalysis, which has attracted much attention as it could potentially enable highly efficient and/or unprecedented transformations in a one-pot operation (Figure 6). Indeed, excellent transformations have been established by taking advantage of both of these catalytic approaches, where two types of catalyst combinations have been developed in hybrid catalysis. One is that each reactant is activated simultaneously by one type of catalyst; for instance, a metal catalyst is used to activate the nucleophile while an organocatalyst is used to activate the electrophile in a cooperative manner (Figure 6a & 6b).

The other is the consecutive transformation using a binary catalytic system, that is, relay catalysis for a multistep sequence in which each catalyst promotes one type of reaction in a sequential manner. The later binary catalytic system, namely relay catalysis, is attractive with respect to achieving multistep transformations in one pot (Figure 6c).

#img(
    path: "/images/satavisha6.png",
    caption: "The concept of *a)* cooperative catalysis; *b)* synergistic catalysis and *c)* relay catalysis",
    position: top,
    // width: 66%,
    portrait: false
)

Although several combinations between transition metal complexes and chiral phosphoric acids are possible, the efficient hybrid system is achieved under the following conditions:

+ avoiding the deactivation of catalyst each other 
+ establishing the relay catalytic system efficiently.

#img(
    path: "/images/satavisha7.png",
    caption: "Advanced molecular transformations by “transition metal/chiral Brønsted acid” hybrid catalytic system",
    position: bottom,
    // width: 90%,
    portrait: false
)

Delightfully, the phosphoric acid catalysts are less coordinated ligand for metal species and hence deactivation of metal catalysts would be avoided in most cases. In addition, chiral phosphoric acid (I) is relatively inert to oxidation and reduction conditions. Hence phosphoric acid (I) can apply to redox reaction catalyzed by transition metal complexes. Although a variety of transformations would be expected in the proposed hybrid catalytic system, we focused on the utilization of transition metal-hydride complexes because these are powerful and efficient catalyst for the carbon-carbon multiple bond isomerization. We envisioned applying this attractive transformation to combine with the chiral phosphoric acid catalysis (Figure 7).

== Importance of the proposed hybrid catalytic system

We envisioned relay hybrid catalysis by the combination of transition metal catalysts and chiral phosphoric acid catalysts (I), in which highly efficient and/or unprecedented transformations would be established in a one-pot and stereoselective manner. The key feature of the proposed relay hybrid catalytic system is that the number of batch operations is reduced to suppress the formation of waste materials. In addition, the generation of reactive intermediates in situ is achieved for further transformations, and the method is beneficial in terms of maintaining the reactive intermediate at a low concentration to avoid the formation of byproducts.

// #colbreak()
