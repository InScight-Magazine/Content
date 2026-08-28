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
  keys: ("tanmoy", "munshi"),
  // A title is not needed for the editor's word section, 
  // it's automatically set internally. In fact, IT IS
  // NECESSARY FOR THE TEMPLATE THAT YOU NOT PASS ANY TITLE,
  // in order to disntinguish this from the foreword section,
  // that uses the same function.
  imgWidths: (80%, 80%),
  fraction: 1.2fr,
  // array of widths for the above images
  // if left empty, images will take up entirety of right column
  author: [Abhirup Mukherjee],
  affiliation: [InScight, _IISER Kolkata_],
  // full name and affiliation of editor who wrote this
)

*InScight: A Retrospective*

At the time of writing this, _InScight_ is nine issues old. It might not sound like a lot in the grand scheme of things, but a lot of things have already changed since then. The team is largely different compared to what we started with. The design pipeline has undergone large modifications. Several new sections have been added to the magazine. ChatGPT has become able to create very nice images, which wasn't possible when _InScight_ had started. We at _InScight_ felt that this is therefore a good time to publish a _retrospective issue_, where we look back on the past publications and present a curated collection of articles and interviews that were most well-received.

*Why and How*

There are two reasons why we felt that a retrospective issue was appropriate. Firstly, given that we have already published a large body of articles and interviews over the past two years, we wanted to make sure that our readership does not miss out on the "classics". Secondly, the time of publishing this issue aligns closely with the arrival of first year BS-MS students at IISER Kolkata, and we felt that a curated issue of this kind would serve to showcase the best of _InScight_ to the new members of our community and generate interest among them. For the more technically-inclined readers, we selected the articles based on a weighted score:
$ 0.6 times "normalised views" + 0.4 times "engagement time". $
The data for views and engagement time was gathered from our website analytics. Articles and interviews with the highest scores were chosen.

*Our Hopes For This Issue*

As we begin preparing for the tenth issue following this, the present issue should serve to take stock of what we have achieved and what must be improved upon. We hope that the community at large will make use of this opportunity to gain a better idea of _InScight_ and join our efforts more actively, whether by contributing content or by helping us in reviewing and designing the magazine. In parting, I want to stress that this issue embodies the general philosophy that we have been adhering to throughout our journey: _science for the sake of it_.
