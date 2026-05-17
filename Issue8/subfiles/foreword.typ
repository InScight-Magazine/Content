//////////////////////////////////////////////////////////////////////////////
// EXAMPLE ARTICLE FOR INSCIGHT
// I HAVE TRIED MY BEST TO INCLUDE AS MANY EXAMPLES OF TEMPLATING AS POSSIBLE
// TO MAKE THE EXAMPLE AS COMPREHENSIVE AS I CAN.
// IF YOU FIND ANYTHING UNCLEAR OR HAVE THOUGHTS ON MAKING THIS MORE
// COMPLETE, LET ME KNOW.
//////////////////////////////////////////////////////////////////////////////

#import "/template-files/inscight-template.typ": * // this simply imports the layouts and helpers; this never changes

#show: foreword.with(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  title: "Interdisciplinary Frontiers in Modern Science",
  // appropriate title that captures the spirit of the writeup.
  // passing some title is mandatory, otherwise the template
  // will interpret this as the "Editor's word" section instead.
  images: ("../covers/games.jpeg", "../covers/dishari.svg"),
  // Array of image paths that will be dislayed alongside the writeup
  captions: ([Enjoy our #pageLink("quiz", [pop quiz]) on works of science fiction.], [#pageLink("dishari", [In her article]), Dishari traces how Jane Goodall, a young woman with no formal scientific training, walked into Gombe with a notebook and binoculars and ended up overturning one of humanity’s most cherished assumptions — that tool-making, complex social life, and culture belonged to us alone.]),
  // array of cations for the above images
  widths: (100%, 100%),
  // array of widths for the above images.
  // if left empty, images will take up entirety of right column
  author: [Prof. Kajaljyoti Borah],
  affiliation: [Department of Earth Sciences, IISER Kolkata],
  // full name and affiliation of faculty member who wrote this
)

The field of science has witnessed significant advancements in recent years driven by diverse disciplines, varied perspectives and lived realities, where insights from one domain illuminate challenges in another. This issue of InScight brings together a collection of studies that explore environmental consciousness, biological sciences, geophysics, and mathematical theory. Together they reflect the growing importance of interconnecting modern research.

It begins by reflecting on the enduring legacy of Dr. Jane Goodall, whose work serves as a reminder that science is not only about discovery but also about responsibility towards protecting biodiversity and studying human evolution through basic research. The world laments the loss of such a selfless human.

Natural hazards always remain a pressing concern. The Bengal Basin is seismically one of the most vulnerable regions due to high density of human population and presence of thick sediments. This amplifies the seismic waves generated even from small magnitude earthquakes. The most recent 21st November 2025, Mw5.4 earthquake that occurred 25 km from Dhaka took lives of 10 people in the region. The study on seismic wave amplification in the Bengal Basin will be helpful for seismic hazard assessment in the region.

Complementing seismic hazards, the present issue is an exploration of interdisciplinary medical research, where the role of sleep-related hormones is examined as a potential candidate in understanding Wilson’s disease. It highlights how innovative pathways can be designed to approach complex disorders.

This issue is further enriched by a mathematical exploration of finite points, infinite lines, and elegant proofs which remind us that the real beauty of mathematics lies in its simplicity and logical thoughts.
	
In addition, Prof. Bikram Dhara has highlighted the phenomenon of brain drain, wherein talented brains migrate abroad in search of better opportunities. This has raised an alarm about how India can retain and empower its brightest minds. Also, the bridge connecting the elegant symmetries of particle physics to the profound abstractions of topology and algebra has been wonderfully presented by Dr. Sridip Pal. It not only challenges our intellect but also the very way we perceive the universe.
	
This edition not only showcases cutting-edge research but also catalyze reflection on policies, practices and interdisciplinary research. I sincerely appreciate the authors for their valuable contributions, as well as the reviewers and editorial team for their dedication and rigorous efforts. Hopefully, this issue stimulates further research and foster deeper understanding in the related fields.
