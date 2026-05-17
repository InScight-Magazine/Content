//////////////////////////////////////////////////////////////////////////////
// EXAMPLE INTHEVIEW FOR INSCIGHT
// I HAVE TRIED MY BEST TO INCLUDE AS MANY EXAMPLES OF TEMPLATING AS POSSIBLE
// TO MAKE THE EXAMPLE AS COMPREHENSIVE AS I CAN.
// IF YOU FIND ANYTHING UNCLEAR OR HAVE THOUGHTS ON MAKING THIS MORE
// COMPLETE, LET ME KNOW.
//////////////////////////////////////////////////////////////////////////////

#import "/template-files/inscight-template.typ": * // this simply imports the layouts and helpers; this never changes

#show: interview.with(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  group1: ("SS:", ),
  group2: ("BD:", ),
  title: "Dilemma, Brain Drain, Biasness, and Supersaturation Trap in Indian Research – In Conversation with Professor Bikram Dhara." ,
  // title must be a string. Can contain formatting (bold, italic) or math (enclosed within ticks ``), 
  // but we aim to keep the title as simple as possible
  interviewees: ("Prof. Bikram Dhara",),
  // interviewees is string or array of strings (in case of multiple interviewees).
  // Can contain formatting (bold, italic) or math (enclosed within ticks ``), 
  // but we aim to keep the title as simple as possible
  // single interviewee example: #let interviewees = ("Man 1",), or #let interviewees = "Man 1"
  interviewers: ("Subham Sarkar", ),
  // identical structure as interviewees
  interviewerAffiliations: ("Department of Biotechnology, St. Xavier's College", ),
  // affiliations has properties exactly same as interviewees
  abstract: "*Prof. Bikram Dhara discusses the evolving mindset of* Indian science students, shaped by career pressures and global aspirations. He critiques exam-centric systems, declining interest in basic science, and weak mentorship, while advocating interdisciplinary learning, ethical research, and resilience, framing scientific pursuit as a lifelong commitment rooted in curiosity and social responsibility.", 
  // String. Abstract/excerpt/pitch for the article. Formatting is possible and encouraged.
  received: (month: 12, day: 26, year: 2025), // article finalising date
  intervieweeInfo:  ("*Professor Dhara* is a clinical and environmental microbiologist with specializations in studying host-pathogen interactions, nanobiotechnology, and transdisciplinary research. He is a distinguished faculty of Department of Microbiology, Saveetha Medical College and Hospital, Chennai, India.", ),
  // intervieweeInfo is meant for interviewee bio and stuff. Has same properties as interviewees.
  // string for single author, array of strings for multi author
  // multi-author example: #let authorInfo = ("Desc 1", "Desc 2")
  coverImage:  "/covers/dhara.svg",
  intervieweeImage:  "/authFaces/dhara.jpg",
  // cover image and author image are kept in their respective folders, which must be reflected in the paths
)

SS: Hello Professor Dhara. As someone deeply embedded in the academic ecosystem, how do you perceive the current mindset of high school students in India regarding the pursuit of science? 

BD: It is fascinating because, while the enthusiasm for science is high, the why behind it has been deeply bifurcated. In my observation, Indian high school students generally fall into two distinct sociological brackets. On one hand, you have the multi-generational learners. These students come from families where science is a tradition; their parents or grandparents were scientists, doctors, teachers, engineers, or have studied science in their high school or university. They understand the nuances of research, the prestige of academia, and the long-term rewards. Motivating this group toward a research career is relatively seamless because the path is already illuminated. On the other hand, we have a growing surge of first-generation science aspirants. These are brilliant students who achieve stellar results, which, as we know, are becoming increasingly common today, but they view science through a more pragmatic lens. Their attraction to the stream is often driven by a one-dimensional search for security. They see science not necessarily as a quest for discovery, but as the most reliable stream for a steady, respectable job in an uncertain economy.

SS: That distinction in motivation is striking. However, regardless of their background, there seems to be a common goal for many, which is leaving India for higher studies and research. How pervasive is the abroad narrative today?

BD: It has become the dominant narrative. My estimate is that more than 50 percent of students in both groups share a singular, deeply held impression, that meaningful scientific breakthroughs are only possible abroad. There is a pervasive belief that to do real science or to have a significant global impact, one must settle abroad for higher studies and professional life. Interestingly, this is not just a passing thought, rather it has become a fundamental predisposition that has intensified significantly since post 2010s.

SS: Why has this tendency accelerated so much post-2010? Is it purely academic, or is there any deeper social influence at play?

BD: It is deeply social, particularly within the middle class. We are seeing a powerful peer-observation effect. Younger students look at their seniors of their neighbourhoods, schools, relatives, or acquaintances, who have moved to Europe, the US, or other developed nations. They see the polished lifestyle, the advanced laboratories, and the global recognition. To a teenager in India, that success story becomes the ultimate benchmark. This creates a self-perpetuating cycle. Each success story abroad serves as a silent recruitment poster for the next generation to leave India. This is one of the engines driving the modern brain drain. It is not just that they are running away from something here, they are being magnetically attracted toward a lifestyle and a research culture that they believe India cannot yet replicate.

SS: Regarding the brain drain, you mentioned that juniors are influenced by the lifestyle of seniors abroad. How do we create a narrative in Indian science that can compete with the allure of the West?

BD: We cannot compete on lifestyle alone, as the economic gap is real. However, we can compete on the impact and belonging.  We must publicize the instances of those who successfully navigated the Indian system to solve local problems, be it in bioresources, agriculture, or indigenous medicine. When a high schooler sees a senior building a successful deep-tech startup or a world-class lab in India, the 'abroad or nothing' mindset begins to crack. I encourage brain circulation, where going abroad is for exposure, but returning is for the mission.

#img(
  path: "/images/dhara2.jpeg",
  caption: "*Prof. Bikram Dhara* being felicitated at Scottish Church College, Kolkata, India.",
  position: top, // location of image: can be top, bottom or auto (dependent on surrounding text).
  width: 100%, // make this > 66% to force the image to span both columns (along with portrait set to false)
  portrait: true // whether to position the caption below (true) or to the right of the image (false).
  // if width is > 66%, portrait: false also forces the image to span both columns
)

SS: Professor, given the complexities of student motivations we discussed, how do you personally intervene when a student is standing at the crossroads after high school, feeling trapped or confused?

BD: My primary role at that stage is to act as a stabilizer. High school graduates in the science stream often feel confused or dilemmatic. I start by deconstructing that pressure. I explain to them the realities of the academic rigors ahead and, more importantly, how to manage the psychological toll. I never believe in rushed decisions. I tell them to take their time and think. I provide them with the mental space to consider their future not as a race to a job, but as a long-term alignment of their identity with their work. My goal is to transform their confusion into a calculated exploration of their own potential.

SS: In present day Indian context, Biology has almost become synonymous with NEET. How do you address this singular focus among students?

BD: You are right. It has become a craze. When a student chooses biology, the social machinery immediately pushes them toward the medical entrance exams. This unilateral focus creates a bottleneck where immense talent is often wasted if they are somehow unable to secure a seat. I actively motivate my students to look beyond the NEET horizon. I introduce them to specialized institutes and diverse professions in biotechnology, genetics, bioinformatics, and other research sectors, that are just as prestigious and impactful. Interestingly, the students who refuse to focus unilaterally on NEET often excel. By broadening their scope, they find paths that actually resonate with their aptitude rather than just following the herd.

SS: You mentioned that student interests are shifting. Are there specific trends you have noticed in terms of gender or the topic of science they want to pursue?

BD: There are distinct patterns. For instance, among female students, there remains a strong inclination toward nursing, a field that offers a unique blend of scientific application and social service, even when they choose not to pursue specialisation in traditional medicine. More broadly, there is a worrying trend toward applied or translational research. Everyone wants to work on the end product, such as the cure, the gadget, the immediate solution. While this is important, it has caused a decline in interest in basic or classical scientific research. We must remember that without basic science, there is nothing to apply. The balance between the two is currently dwindling. I find myself increasingly advocating for the beauty of fundamental research, the kind that seeks to understand the why and how of the universe before rushing to the how can we commercialize this.

SS: Beyond passion and aptitude, there is the undeniable factor of economics. How do you factor a student's background into your guidance?

BD: This is perhaps the most grounded part of my mentorship. I always check the financial scaffolding supporting a student. I believe, higher studies and a career in research are marathons, not sprints. They require years of hard work, dedication, and determination before they become financially lucrative. If a student has a dream but lacks the financial means, I do not tell them to quit. I help them find the right scholarships, funded fellowships, and integrated programs that provide stipends. Identifying interest and potential is only half the battle, and ensuring that a brilliant mind is not stifled by an empty pocket is the other half. I aim to provide direction and hope, but always rooted in the reality of their circumstances.

SS: Professor, you have spoken about the individual dilemmas students face. However, research is rarely a solitary pursuit. How are you addressing the need for a more integrated, community-driven approach to science in India?

BD: You have hit on a very important point. In the traditional academic setup, students often work in silos. To break these walls, I founded the Society of Multidisciplinary Biology and Translational Research. This is not just a student club, it is a comprehensive, multi-generational network. We have brought together undergraduate and postgraduate students, seasoned researchers, alumni from prestigious institutions, industry veterans and professionals, and active scientists. The goal is to create an educative network, where an aspirant can see the entire trajectory of a scientific idea, from a theoretical spark in a textbook to a tangible product in the industry, linking basic science to translational research.

SS: That sounds like a massive undertaking. What is the core philosophy you instil in the members of this society?

BD: We focus on the strategy of research. Most students know what to study, but very few know how to build a research career. We expose them to the foundational architecture of scientific inquiry. We emphasise a dual-lens approach, encompassing theoretical depth and practical application. We help them to master the beauty and logic of science, and understand the industrial and entrepreneurial potential of that knowledge. By bringing in biotech companies and industry professionals, we provide entrepreneurship exposure. We want our students to realize that they always do not just have to apply for jobs; they can also be the architects of new scientific ventures. We mould them to appreciate that science is both an art form and a practical tool for societal advancement.

#img(
  path: "/images/dhara4.jpeg",
  caption: "*Prof. Bikram Dhara* is a trained herpetologist.",
  position: bottom, // location of image: can be top, bottom or auto (dependent on surrounding text).
  width: 80%, // make this > 66% to force the image to span both columns (along with portrait set to false)
  portrait: true // whether to position the caption below (true) or to the right of the image (false).
  // if width is > 66%, portrait: false also forces the image to span both columns
)

SS: Have you noticed a tangible difference in students who are part of this multidisciplinary environment compared to those in traditional academic paths?

BD: The difference is conceivable and, quite frankly, profound. Most students are taught to pass exams, whereas we guide our students to solve problems. Because we encourage a full spectrum approach, allowing them to explore any topic that ignites their curiosity, their research aptitude develops much faster. They possess a certain research mindfulness. They are not intimidated by complex data or industrial requirements because they have already been in the room with the experts. This exposure gives them a competitive edge, in disguise of a scientific maturity, that sets them apart in both domestic and international arenas.

SS: Professor, you have built a remarkable ecosystem through your Society. However, when you gather so many high-achieving minds in one place, do you find that the rat race of the outside world eventually finds its way inside?

BD: It is an inevitable shadow. Even within our Society, the human tendency toward comparison is persistent. I see students beginning to parameterize their accomplishments, turning their research, their networking, and even their learning into a series of competitive metrics. They start asking, "Who has more citations?" or "Who has the better internship?" This is the very mindset I fight against. I constantly remind them that while academic scores are the keys that open doors, the thrill of discovery and the strength of one’s professional network are what keep you in the room. If you turn research into a rat race before you have even finished your degree, you kill the soul of your scientific inquiry. The thrill must remain the primary driver; otherwise, you are just a high-functioning machine, not a scientist.

SS: Who bears the responsibility for keeping this competitive fire from becoming destructive? Is it purely on the students to stay grounded?

BD: Not at all. The onus lies equally upon the students and their guides. A mentor’s job is not just to teach a lab technique or introduce the students to a topic; it is to provide continuous mentorship and constant emotional support. In research, failure is more common than success. If a guide only rewards good results, they inadvertently fuel a toxic competitive environment. A true mentor must celebrate the process, the failed experiment that taught a lesson, and the collaborative spirit. Without that steadying hand, a student is likely to lose their way in the pursuit of superficial parameters.

#img(
  path: "/images/dhara7.jpeg",
  caption: "*Prof. Bikram Dhara* in conversation with his mentor, Dr. Arup Kumar Mitra, at Bhagalpur University, India.",
  position: top, // location of image: can be top, bottom or auto (dependent on surrounding text).
  width: 100%, // make this > 66% to force the image to span both columns (along with portrait set to false)
  portrait: true // whether to position the caption below (true) or to the right of the image (false).
  // if width is > 66%, portrait: false also forces the image to span both columns
)

SS: You’ve mentioned the importance of the guide. How would you describe the current state of mentorship within the broader Indian government college system?

BD: I will speak plainly, and I say this without overestimation, unfortunately, roughly 90 percent of government college professors are least bothered about the future of their students. There is a pervasive culture of academic stagnation. Many educators have become comfortable within the confines of a rigid curriculum and administrative routine. They rarely think outside the box, and consequently, they fail to encourage their students to do the same. They view their roles as purveyors of information rather than architects of careers.

SS: That is a stark and concerning figure. Is there any room for optimism within that system?

BD: Exceptions are always there. There are brilliant, tireless professors in government institutions who go above and beyond, often with very little recognition. But they are the outliers. The system, as it stands, does not prioritize the unconventional thinker. This is why our Society is so crucial, it fills the void left by institutional apathy. We provide the mentorship that the mainstream system often ignores. We are not just trying to produce graduates; we are trying to rescue the small percentage of brilliant minds who are stuck in a crowded indifferent system and give them the wings to think beyond the horizon.

SS: You have been vocal about the 90% institutional apathy in government colleges. If you were given the authority to overhaul the Guide - Student relationship, what would be the changes you would advocate?

BD: I would advocate implementation of mandatory mentorship training. Being a brilliant researcher does not spontaneously make one a good guru. Professors must be trained in psychological support, ethics, and career counselling. Also, I would like to introduce comprehensive feedback mechanisms where students can safely and anonymously report bias without fear of career suicide.

#img(
  path: "/images/dhara5.jpeg",
  caption: "*Prof. Bikram Dhara* at Forest Research Institute, Dehradun, India.",
  position: top, // location of image: can be top, bottom or auto (dependent on surrounding text).
  width: 100%, // make this > 66% to force the image to span both columns (along with portrait set to false)
  portrait: true // whether to position the caption below (true) or to the right of the image (false).
  // if width is > 66%, portrait: false also forces the image to span both columns
)

SS: Professor, you have spoken about the external rat race for jobs, but what about the internal competition within the research community? Do you think that passion for discovery is still the primary driver for today’s doctoral candidates and research aspirants?

BD: Honestly, only a very limited percentage of students are truly mad for research. These rare individuals are driven by a need to explore the unknown, possessing a dedication that exists independently of materialistic expectations. The majority, however, are drawn by the glamour of research. They are often students who possess significant financial and social safety nets, allowing them to pursue a Ph.D. as a prestigious ornament. I call this the supersaturation trap. If some were to strip away the social prestige and the high-profile lifestyle often associated with international science (as it is portrayed), this group would vanish. Because their motivation is superficial, their research often lacks the grit required for true translation into practical terms. We are seeing a burgeoning number of unnecessary research papers that add volume but no value to the global scientific pool.

SS: You’ve previously mentioned the dwindling interest in basic science. Does this glamour play a role in which fields of study students choose?

BD: Absolutely. There is a massive imbalance fuelled by over-glorification. Take cancer research, for example. Students flock to it in massive numbers because it is perceived as high-stakes. Of course, cancer research is necessary, but a student interested in soil microbiology is often judged upon by his or her peers, because this is how the idea of research themes have been framed. Meanwhile, vital basic and fundamental research comparatively remains neglected. Even when there is ample funding available for fundamental studies, we see a scarcity of interested minds. Everyone wants to work on the cure, but no one wants to do the foundational work that makes the cure possible. This is because basic science is no longer considered glamorous; it is slow, methodical, and often invisible to the public eye. Without a return to fundamental science, our translational successes will eventually run dry.

SS: Professor, you mentioned a supersaturation trap where unnecessary research is clogging the system. If we were to design a filter for this, how do we distinguish between research that is truly transformative and meaningful, and research that is glorified?

BD: The filter must be the intentionality of the inquiry. Currently, we measure success by impact factors and citation counts, metrics that can be easily manipulated by smart students and biased professors. To break the trap, I believe, we must shift toward process - based evaluation. Instead of first asking, "Where did you publish?" we should ask, "What fundamental gap does this fill?" or "How does this challenge the existing dogma?" If a project is merely a slight variation of existing applied work, which has been designed only to capitalize on a glamorous trend, it should be scrutinized more heavily. We need to reward the courage to tackle basic science over the convenience of following a trend.

SS: You have been very honest about the Rat Race. If a student still feels compelled to enter that high-pressure environment, what is your advice to them?

BD: I tell them this: if the rat race excites you, if that adrenaline drives you, then by all means, enter it. But do so with your eyes wide open. Do not regret your choices later. If you choose the path of high-stakes, high-pressure competition, you must be mentally prepared for the fallout. The greatest tragedy in research is not failing an experiment; it is losing your individuality and your confidence mid-race. If you find that the pressure is eroding the person you are, then you must have the courage to stop and rethink. If you lose your spirit, you are no longer suitable for the profound experiences and the beauty of the unknown and unexplored that a life in research has to offer. Research is for the resilient. It is for those who can remain themselves even when the results are nowhere to be found.

SS: Beyond the choice of subjects, you hinted at a deeper systemic issue regarding the relationship between Professors and their students. How does "biasness" manifest in the Indian research ecosystem?

BD: Biasness in the laboratory can be, at times, eye-offending. It is an open secret that many professors maintain a circle of favourite students. These favourites are chosen not just for their potential, but for how they serve the professor both personally and professionally. From my personal experiences I can say that this creates a dangerous ripple effect. Students who benefit from this favouritism often feel invincible. This entitlement leads them to commit academic malpractice with total confidence because they know they are protected. These students become adamant and unteachable. Eventually, this bias can become a burden even to the Professor who fostered it, as the favourite might begin to demand more than they contribute. The truly hardworking students who are not in the inner circle become the victims, their morale crushed by a system that rewards loyalty over logic.

SS: Does this change how students view their mentors? We often hear about the Guru-Shishya tradition in Indian education. Is that still alive?

BD: That tradition is fading fast. Today’s students are incredibly clever. They are smart in a transactional sense. They no longer view their principal investigators as gurus. Instead, they observe their professors with a cold, analytical eye. In top-tier institutions, students approach their professors based on convenience and utility. They study the professor’s attitudes, their weaknesses, and their biases, and they approach accordingly. It is a strategic partnership rather than a quest for knowledge. When science is reduced to a game of navigating a professor's ego for personal gain, the quality of research suffers an irreparable blow. I believe, we are gradually losing the sanctity of the lab to a culture of tactical manipulation.

SS: Professor, to conclude this profound discussion, what is your final message to the students who are currently standing at the threshold of a research career? 

#colbreak()
BD: My message is simple but demanding. You must realize that a Ph.D. is a way of life, not a mere academic pursuit. If you view it only as a degree to be earned or a certificate to be framed, you will miss the essence of the journey. You must be dedicated, socially responsible, and genuinely educated. When these three traits converge, they do not just build a career; they create a promising future for the country. But this future is only sustainable if you approach good science with balance. Passion is the engine, but you must prioritize your physical health, your mental well-being, and your quality time. A researcher who has no life outside the laboratory, no extracurricular joy, or no connection to the world, will eventually find their creativity drying up.

SS: Thank you, Professor, for sharing with us your views and valuable insights.

BD: Thank you.

To conclude, the interview reveals that the crisis in Indian science is not a lack of talent, but a crisis of orientation and integrity. Professor Dhara’s final message remains a powerful call to arms for the young researcher. He defines the Ph.D. as a way of life, one that demands a delicate equilibrium between intellectual passion and personal well-being. By fostering societies like the Society of Multidisciplinary Biology and Translational Research, he demonstrates that the alternative to the rat race is a collaborative, multidisciplinary community that values the Guru - Shishya spirit in a modern, industrial context. Ultimately, the interview suggests that for India to reverse its brain drain and reclaim its scientific heritage, it must build an ecosystem where merit is shielded from bias and where the pursuit of truth is considered the one of highest form of social responsibility.

#img(
  path: "/images/dhara6.jpeg",
  caption: "*Prof. Bikram Dhara* addressing at a conference at Khulna University, Bangladesh.",
  position: bottom, // location of image: can be top, bottom or auto (dependent on surrounding text).
  width: 100%, // make this > 66% to force the image to span both columns (along with portrait set to false)
  portrait: true // whether to position the caption below (true) or to the right of the image (false).
  // if width is > 66%, portrait: false also forces the image to span both columns
)

// #img(
//   path: "/images/dhara1.jpg",
//   caption: "*Professor Bikram Dhara* is a distinguished health and agricultural scientist who currently serves as a prominent faculty member at the Centre for Global Health Research, Saveetha Institute of Medical and Technical Sciences (SIMATS) in Chennai, India. His academic i2nfluence extends further as a Visiting Scientist at the Estuarine and Coastal Studies Foundation (ECSF), India. He pursued his Ph.D. from Department of Microbiology, St. Xavier’s College (Autonomous), Kolkata, India. He is also associated with numerous societies of national and international repute. 
//
//   ",
//   position: top, // location of image: can be top, bottom or auto (dependent on surrounding text).
//   width: 100%, // make this > 66% to force the image to span both columns (along with portrait set to false)
//   portrait: true // whether to position the caption below (true) or to the right of the image (false).
//   // if width is > 66%, portrait: false also forces the image to span both columns
// )
// Recognized as an educator, Professor Dhara has built a career defined by versatility, blending the rigors of classical botany and plant physiology with the high-tech demands of microbial biotechnology and mycology. His work is notably multidisciplinary, bridging the gap between traditional natural sciences and modern translational research in medicine and bioprospecting. In the realm of advanced medical science, Dr. Dhara is an exceptional researcher whose expertise encompasses *microbiology, stem cell research, and disease therapy*. He is recognized for his ability to integrate experimental laboratory techniques with computational biology, a dual approach that allows him to drive innovation and address complex biological challenges with precision. This synergy of *wet lab and dry lab methodologies* has positioned him as a forward-thinking scientist capable of navigating the complexities of modern biotechnology to find solutions for human health and agricultural sustainability. 
//
//   Beyond his technical achievements, Professor Dhara is celebrated for his profound impact as a mentor and his commitment to the development of young researchers. His philosophy encompasses building a robust research foundation, where he meticulously guides students through the nuances of experimental design and rigorous data interpretation. By instilling a sense of discipline and responsibility, he prepares his mentees for the realities of professional science. He is known for empowering his students to take ownership of their independent projects, providing a supportive environment that balances expert guidance with the freedom to explore. 
//
//   Professor Dhara is regarded as an approachable figure who remains deeply connected to his social environment. His diverse interests are further highlighted by his training as a *herpetologist*, reflecting a lifelong passion for the natural world that complements his laboratory-based successes. Ultimately, he embodies the ideal of the modern scientist: a dedicated researcher and innovator whose brilliance is matched by his personality and his unwavering dedication to the growth of his students and the advancement of global science.
