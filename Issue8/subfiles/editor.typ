//////////////////////////////////////////////////////////////////////////////
// EXAMPLE ARTICLE FOR INSCIGHT
// I HAVE TRIED MY BEST TO INCLUDE AS MANY EXAMPLES OF TEMPLATING AS POSSIBLE
// TO MAKE THE EXAMPLE AS COMPREHENSIVE AS I CAN.
// IF YOU FIND ANYTHING UNCLEAR OR HAVE THOUGHTS ON MAKING THIS MORE
// COMPLETE, LET ME KNOW.
//////////////////////////////////////////////////////////////////////////////

#import "/template-files/inscight-template.typ": * // this simply imports the layouts and helpers; this never changes

#show:foreword.with(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  // A title is not needed for the editor's word section, 
  // it's automatically set internally. In fact, IT IS
  // NECESSARY FOR THE TEMPLATE THAT YOU NOT PASS ANY TITLE,
  // in order to disntinguish this from the foreword section,
  // that uses the same function.
  images: ("../covers/baibhav.svg", "../covers/dhara.svg"),
  // Array of image paths that will be dislayed alongside the writeup
  captions: ([New research focused on the boundary between the ancient Shillong Plateau and the soft, deep sediments of the Bengal Basin has revealed a mechanism for earthquake wave amplification that is so severe it could multiply shake intensity by two to five times in urban areas. #pageLink("karmakar", [Read the rest in this article.])],[*Prof. Bikram Dhara discusses the evolving mindset of* Indian science students, shaped by career pressures and global aspirations. #pageLink("dhara", [Read the rest in this interview.])]),
  // array of cations for the above images
  widths: (70%, 70%),
  // array of widths for the above images
  // if left empty, images will take up entirety of right column
  author: [Janusri D],
  affiliation: [Editor at _InScight_, IISER Kolkata],
  // full name and affiliation of editor who wrote this
)

Science does not confine itself to laboratories or lecture halls; it lives in forests, fault lines, and the restless minds of those who dare to ask uncomfortable questions.

Across the world, research budgets are being slashed, grants are drying up, and scientists are being asked to do more with less. The question of who funds science, and why, has never felt more political. And yet, science persists, in forests, in fault lines, in the quiet determination of researchers who refuse to stop asking questions. It persists in magazines like this one, built not on funding or politics, but on curiosity. 

In this issue, we bring to you, a tribute to Jane Goodall, who spent decades amongst the chimpanzees of Gombe and redefined what it means to observe, to empathise, and to advocate. Her legacy continues to inspire many of us.

From the restless earth beneath our feet to the abstract world of mathematics, researchers shed light on how the Bengal Basin shapes earthquake risk in one of the world's most crowded regions. A sleep hormone, long overlooked beyond its role in regulating sleep, emerges as a promising treatment candidate for Wilson disease. And we journey through finite points and infinity lines.

Perhaps the most compelling piece is our conversation with Professor Bikram Dhara, who speaks with candour about the dilemmas facing Indian research today, brain drain, systemic bias, and what he calls the "supersaturation trap." It is a conversation that lingers long after you've finished reading. We also venture to the crossroads of theoretical physics and mathematics, where the boundaries between disciplines blur and some of the deepest questions take shape.

And because curiosity should also be fun, we haven't forgotten to leave you with a smile. Flip to the end for our comics and games, a small reminder that the scientific mind deserves to play as much as it ponders. This is a diverse issue, but its pieces share a common spirit, the refusal to accept the world at face value, and the joy of exploring what lies beneath it. 
