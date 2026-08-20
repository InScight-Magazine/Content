//////////////////////////////////////////////////////////////////////////////
// EXAMPLE ARTICLE FOR INSCIGHT
// I HAVE TRIED MY BEST TO INCLUDE AS MANY EXAMPLES OF TEMPLATING AS POSSIBLE
// TO MAKE THE EXAMPLE AS COMPREHENSIVE AS I CAN.
// IF YOU FIND ANYTHING UNCLEAR OR HAVE THOUGHTS ON MAKING THIS MORE
// COMPLETE, LET ME KNOW.
//////////////////////////////////////////////////////////////////////////////

#import "/template-files/inscight-template.typ": * // this simply imports the layouts and helpers; this never changes

#let title = "Why Giant Dragonflies Disappeared" 
// title must be a string. Can contain formatting (bold, italic) or math (enclosed within ticks ``), 
// but we aim to keep the title as simple as possible

#let authors = "Aditya Choudhary"
// author list is string or array of strings (in case of multiple authors).
// Can contain formatting (bold, italic) or math (enclosed within ticks ``), 
// but we aim to keep the title as simple as possible
// multi-author example: #let authors = ("Author 1", "Author 2")

#let affiliations = "Little Angels School, Visakhapatnam"
// affiliations has properties exactly same as authors
// multi-author example: #let affiliations = ("Insti 1", "Insti 2")

#let authorInfo = "*Aditya Choudhary* is a 13-year-old student from Visakhapatnam studying in Class 8-A at Little Angels School. He enjoys learning about prehistoric life, evolution, and surprising scientific discoveries, especially when new evidence challenges ideas that scientists once thought were settled."
// authorInfo is meant for author bio and stuff. Has same properties as authors.
// string for single author, array of strings for multi author
// multi-author example: #let authorInfo = ("Desc 1", "Desc 2")

#let coverImage = "/covers/aditya.svg"
#let authorImage = "/authFaces/aditya.jpg"
// cover image and author image are kept in their respective folders, which must be reflected in the paths

#let received = (month: 6, day: 19, year: 2026)
// article finalising date

#let abstract = "Millions of years ago, giant dragonfly-like predators with the wingspans of modern seagulls ruled the skies before mysteriously vanishing. While scientists have long blamed their extinction on plummeting atmospheric oxygen levels, new anatomical research suggests these ancient insects had plenty of respiratory capacity to spare. This article explores the fascinating possibility that the true culprits behind their demise were shifting prehistoric ecosystems and the evolutionary rise of agile, insect-hunting birds."
// String. Abstract/excerpt/pitch for the article. Formatting is possible and encouraged.

#let reviewedBy= "Debanuj Chatterjee"
// String or array of strings. Names of the editors/reviewers for the article.
// Same properties as authors.

#let refsFile = "/dataFiles/aditya.yml"
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
  // breakAfter: (-1,),
)
// note the two optional arguments that have sensible default values and can be ignored.
// authorImageWidth: width of author image. Set to 100% by default. decrease if image becomes too big to fit
// breakAfter: array of integers. adds a column break after each of the provided integers. Used for balancing
// columns of the page. For example, if the final page contains 10 references that fill the left column and
// leave the right column empty, setting breakAfter: (5,) will add a column break between the 5th and 6th
// references and shift references 6-10 to the right column, spreading the content evenly across columns.
// By default it is set to (-1,) which means no column break is added by default. You will need to adjust this
// depending on the content.

#dcap("Imagine stepping outside on a warm afternoon with a snack in your hand when a shadow suddenly sweeps across the ground. You look up and see what appears to be a dragonfly - except its wingspan is nearly as wide as a seagull's. Its enormous eyes scan everything below, its jaws are built for catching prey, and the rapid beating of its wings fills the air with a sound that is impossible to ignore. It sounds like science fiction, but around 300 million years ago, _giant dragonfly-like insects_ really did exist. Known as *griffinflies*, these ancient aerial predators could reach wingspans of nearly _70 centimetres_, making them larger than many birds alive today. Although they were not true dragonflies, they looked remarkably similar and occupied a similar role in the ecosystem. For millions of years, they ruled the skies. Then they vanished. _No griffinflies survive today_, and modern dragonflies are only a fraction of their size. For decades, scientists believed they knew exactly why these giants disappeared. However, new research suggests that one of the most popular explanations may not be as solid as once thought.")
// the first paragraph must be passed into the dcap function to insert a drop cap at the beginning of the article.

#img(
  path: "/images/aditya1.jpg",
  caption: "A fossil reconstruction of a giant griffinfly (Meganeurites) from the Palaeozoic era. \\ By André Nel, Jakub Prokop, Martina Pecharová, Michael S. Engel & Romain Garrouste, via Wikimedia Commons, licensed under CC BY 4.0.",
  position: bottom,
  width: 100%,
  portrait: true
)

The traditional explanation focused on oxygen. During the _Carboniferous Period_ (about 359 to 299 million years ago), Earth's atmosphere contained significantly more oxygen than it does today. Modern air contains about 21 percent oxygen, but estimates suggest that Carboniferous oxygen levels may have reached between 30 and 35 percent #super[1]. Scientists reasoned that this would have been especially important for insects because they do not breathe the way humans do. Instead of lungs, insects rely on a network of tubes called tracheae that carry oxygen directly to tissues throughout the body. Since oxygen moves through these tubes by diffusion, many researchers believed that insect size was limited by how efficiently oxygen could travel through their bodies #super[2]. The more oxygen available in the atmosphere, the easier it would be for insects to support larger bodies. The idea was that larger bodies require more oxygen to sustain their metabolic needs, and with more oxygen in the air, diffusion could supply enough oxygen even to larger insects. As oxygen levels declined over millions of years, insects would have been forced to become smaller because their breathing systems could no longer keep up. This connects to *Kleiber's Law*, which states that an animal's metabolic rate scales with its body mass to the power of 0.75 #super[4]. In simple terms, larger animals need more energy and oxygen per unit of body mass, so when oxygen levels dropped, insects had to shrink to survive. The idea was simple, logical, and widely accepted. It appeared in scientific literature, documentaries, and museum exhibits and was often treated as an established fact rather than a hypothesis #super[3].

#img(
  path: "/images/aditya3.jpg",
  caption: "*Edward Snelling* of the University of Pretoria led a study challenging the long-held belief that oxygen limits insect size.",
  position: bottom,
  // width: 65%,
  portrait: true
)

Recently, however, a team of researchers led by *Edward Snelling* from the _University of Pretoria_ in South Africa decided to investigate the issue more closely. Rather than relying on long-standing assumptions, they examined real insects of various sizes and studied their flight muscles using high-resolution electron microscopes. Their attention was focused on tiny structures called *tracheoles*, which are the smallest branches of the insect respiratory system that deliver oxygen directly to muscle cells. If oxygen truly limited insect size, larger insects should have devoted a significant portion of their muscles to oxygen delivery, packing them with vast numbers of tracheoles. This assumption holds true only if we consider that the efficiency of oxygen extraction by tracheoles remains constant across different body sizes. The researchers expected exactly that. Instead, the results shocked them. Even in large insects, tracheoles occupied _less than one percent_ of flight-muscle volume. In comparison, the capillaries supplying oxygen to the hearts of birds and mammals occupy roughly ten times more space. When comparing this scaling with Kleiber's Law, the researchers found that the tracheole volume did not increase as rapidly as metabolic rate with body size. In fact, the scaling rate was much slower than predicted, suggesting that insects have plenty of room to deliver oxygen even at larger sizes. The findings suggested that insects may not be struggling to deliver oxygen nearly as much as scientists once believed. Rather than operating at the edge of their respiratory capacity, they appear to have plenty of room to spare. While the study does not completely eliminate oxygen as a factor, it raises serious questions about whether it was truly responsible for the disappearance of giant insects.

*If oxygen was not the main reason, then what happened to the griffinflies?* 

One of the most compelling alternative explanations involves *the rise of birds*. This theory was proposed by scientists studying the evolutionary arms race between predators and prey. During the _Jurassic and Early Cretaceous periods_ (about 201 to 100 million years ago), feathered dinosaurs were evolving into increasingly capable fliers, eventually giving rise to the first true birds. These new aerial predators were fast, agile, intelligent, and highly effective hunters. Suddenly, giant insects faced a new challenge. Being large may have made them easier to spot and catch. _Try catching a mosquito with your bare hands. Frustrating, isn't it?_ Now imagine that mosquito was the size of a pigeon. Suddenly the predator has a much easier job. Scientists refer to this as *size-selective predation*, where predators consistently remove larger individuals from a population, giving smaller ones a better chance of surviving and reproducing #super[5]. Over millions of years, this evolutionary pressure could have gradually reduced insect size. In a sky increasingly dominated by birds, being enormous may have transformed from an advantage into a serious disadvantage.

#img(
  path: "/images/aditya2.svg",
  caption: "Size comparison of the giant griffinfly, *Meganeura monyi*, compared to a human. \\ Based on Meganeurites gracilipes from \"Palaeozoic giant dragonflies were hawker predators\" (André Nel, Jakub Prokop, Martina Pecharová, Michael S. Engel & Romain Garrouste) via Wikimedia Commons, licensed under CC BY 4.0.",
  position: top,
  // width: 100%,
  portrait: true
)

Birds may not have been the only factor. Earth's ecosystems were changing dramatically during the _Mesozoic Era_ (about 252 to 66 million years ago), a period that followed the age of giant insects. Flying reptiles known as *pterosaurs*, which evolved during the _Late Triassic period_ (about 228 million years ago), had already taken to the skies, creating additional competition and predation pressures #super[7]. Climate conditions shifted repeatedly, habitats changed, and entire ecosystems were transformed. The evolution of flowering plants altered food webs and freshwater environments where dragonfly larvae developed. Large animals often struggle when environmental conditions change rapidly because they require more resources and are generally less adaptable than smaller species. The giant griffinflies may simply have found themselves increasingly unsuited to a changing world. Rather than being driven to extinction by a single cause, they may have been affected by several factors working together over vast stretches of time.

One of the most fascinating implications of the new research is the possibility that giant insects are not biologically impossible today. If oxygen is not the limiting factor scientists once thought it was, then there may be no fundamental reason why insects could not evolve larger sizes under the right conditions. Edward Snelling has suggested that giant insects could potentially reappear in the distant future if environmental conditions were favourable and enough evolutionary time passed. They would not necessarily require an oxygen-rich atmosphere like the one that existed during the Carboniferous Period.

Three hundred million years after giant dragonflies first dominated the skies, scientists are still piecing together exactly why they vanished. Birds, environmental changes, new competitors, and perhaps even oxygen itself may all have played important roles. The full answer remains hidden somewhere in Earth's distant past, waiting to be uncovered by future discoveries. *Yet that uncertainty is what makes the story so fascinating*. The next time a dragonfly darts past you, remember that you are looking at the descendant of a lineage that has survived for hundreds of millions of years through dramatic planetary changes, mass extinctions, and evolutionary revolutions. And perhaps be thankful that its ancient relatives are no longer around, because sharing your lunch with a dragonfly the size of a seagull would be a very different experience indeed.

#colbreak()
