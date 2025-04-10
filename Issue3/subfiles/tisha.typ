#import "/template-files/inscight-template.typ": *
#import "issueConstants.typ": *

#let title = "Brain on Overload: Unlocking Hope for Rare Diseases Through Cellular Cleanup"
#let authors = ("Tisha Dash (Department of Biological Sciences, IISER Kolkata)",)
#let abstract = "Abstract"
#let coverImage = "/images/tishaCover.jpeg"

#show: section.with(
  header-global: header-global, 
  title: title, 
  authors: authors,
  abstract: abstract,
  coverImage: coverImage
)

#dcap("When you think of waste management, the last thing that comes to mind is the human brain. Yet, deep within our cells, an intricate system works tirelessly to clear out damaged or unnecessary components, ensuring the smooth functioning of critical processes. But what happens when this cleanup system breaks down? For individuals with Mucopolysaccharidosis VII (MPS VII), a rare genetic disorder? This failure triggers a cascade of devastating events, culminating in severe brain damage and early death.")

== Lysosomal Storage Disorders and Neurodegeneration: Revisiting the Molecular Underpinnings
Mucopolysaccharidosis VII (MPS VII), also known as Sly Syndrome, is a rare autosomal recessive Lysosomal Storage Disorder (LSD) caused by mutations in the GUSB (Glucuronidase Beta) gene, which encodes β-glucuronidase (β-GUS), a key enzyme in the catabolism of glycosaminoglycans (GAGs). The deficiency of β-GUS leads to the accumulation of undegraded or partially degraded GAGs within lysosomes, resulting in widespread cellular dysfunction and multi-systemic manifestations [1][2]. Clinically, MPS VII presents with a broad spectrum of phenotypes, including skeletal deformities, hepatosplenomegaly, cardiovascular complications, and progressive neurodegeneration [3]. Notably, neurological symptoms such as cognitive impairment, motor dysfunction, and sensory deficits highlight the impact of lysosomal dysfunction on the central nervous system [4][5].

#v-image(path: "/images/brainDegen.jpg", caption: "Credit: Garrando (Wikipedia)", position: bottom, width: 100%, scope: "parent")

Despite advancements in enzyme replacement therapy (ERT) with vestronidase alfa, the treatment remains inadequate in addressing neurological manifestations due to the inability of the recombinant enzyme to cross the blood-brain barrier[6][7]. This limitation highlights the urgent need for alternative therapeutic approaches that target the molecular mechanisms underlying neurodegeneration in MPS VII. 
Emerging evidence suggests that lysosomal dysfunction disrupts essential cellular clearance pathways, particularly autophagy and mitophagy, which are vital for maintaining neuronal homeostasis[8][9][10]. Autophagy ensures the degradation of damaged proteins and organelles, whereas mitophagy selectively eliminates dysfunctional mitochondria, thereby preventing excessive reactive oxygen species (ROS) production and bioenergetic failure [11]. In the context of LSDs, defective lysosomal activity may impair mitophagic flux, leading to mitochondrial dysfunction, ATP depletion, and neuronal apoptosis—hallmarks of neurodegeneration observed in MPS VII and related disorders [12]

== Leveraging Drosophila as a Neurodegeneration Model: A Key Insight
In a landmark study, a team of scientists from the Indian Institute of Science Education and Research Kolkata, India, has uncovered a crucial link between cellular waste accumulation and brain cell death in MPS VII.[13] Using a fruit fly model, Drosophila melanogaster, they’ve shed light on how dysfunction in a process called mitophagy—the selective disposal of damaged mitochondria—leads to an energy crisis in neurons, ultimately causing neurodegeneration. This discovery holds promise for new treatments and highlights the intricate process of cellular maintenance that keeps our brains healthy. Notably, the research demonstrated that MPS VII flies exhibit a marked reduction in dopaminergic neurons, indicative of neuronal loss. Additionally, impaired mitophagic clearance of damaged mitochondria was observed, with these dysfunctional mitochondria accumulating in the neurons and causing increased oxidative stress and reduced ATP production. Transmission electron microscopy (TEM) imaging revealed the presence of swollen mitochondria with abnormal cristae, supporting the claim of mitophagy defects. The study also showed increased lipofuscin accumulation and multilamellar bodies, further evidence of defective lysosomal clearance mechanisms. Despite the robustness of these findings, they raise an important question: How well do these insights translate into the complexities of human neurodegeneration? In particular, can we bridge the gap between the accelerated pathology in Drosophila and the long-term, multifactorial neurodegenerative processes in humans?

#v-image(path: "/images/tisha2.png", caption: "caption", position: bottom, width: 80%)

In this study, the authors investigated the molecular link between lysosomal dysfunction, mitochondrial impairment, and neurodegeneration, aiming to delineate the cellular and molecular defects driving mitochondrial accumulation and neurodegeneration in CG2135 (β-GUS homolog) knocked-out flies. They focused on the autophagy-lysosomal pathway to determine whether defective mitophagy contributes to mitochondrial dysfunction and neuronal loss. Their findings reveal a significant impairment in mitophagic clearance due to autophagy defects, leading to an energy crisis in the brain that ultimately triggers apoptotic neurodegeneration. Moreover, they demonstrate that pharmacological activation of mitophagy using resveratrol restores mitochondrial function and prevents neuronal loss, highlighting its therapeutic potential for neurodegenerative LSDs.

The use of Drosophila to model MPS VII is a strategic choice, one that takes advantage of the fly's well-characterized dopaminergic neurons and its genetic simplicity. The study showcases how these neurons, which mirror critical features of human neurodegeneration, undergo age-dependent degeneration due to impaired lysosomal function and subsequent mitochondrial damage. Whole-mount brain immunostaining confirmed a loss of dopaminergic neurons in aged CG2135−/− (mutated – knocked out) flies, mirroring neurodegenerative phenotypes observed in Parkinson’s disease (PD).
While the accelerated rate of neurodegeneration in Drosophila provides an efficient platform for studying cellular pathology, it raises concerns about the generalizability of these results. The lifespan of flies is significantly shorter than that of mammals, potentially skewing the observed rate of neuronal loss. Nevertheless, the conserved nature of key cellular processes, particularly those involved in autophagy and mitochondrial function, offers a strong rationale for using the fly as a model. Future studies should aim to track the progression of neuronal damage in more complex mammalian systems to validate whether the temporal patterns observed in Drosophila hold in longer-lived organisms.

#v-image(path: "/images/tisha3.png", caption: "caption", position: bottom)

== Defective Autophagy-Lysosomal Clearance & Impaired Mitophagy in MPS VII

Autophagy is the cell’s way of cleaning up and recycling unwanted materials, including damaged organelles. Mitophagy, a specialized form of autophagy, targets malfunctioning mitochondria for degradation. In the MPS VII model, both processes were impaired. The accumulation of defective mitochondria, which failed to produce enough energy, led to an ATP crisis in neurons. This energy deficit triggered apoptosis, or programmed cell death, contributing to the observed neurodegeneration. Markers of autophagy, such as Atg8a-II and Atg1, were significantly reduced, and damaged components like mitochondria accumulated in the brain. This is where things get particularly interesting. Not only was general autophagy impaired, but a specialized form called mitophagy —responsible for clearing damaged mitochondria—was also defective.

The research emphasizes the central role of defective mitophagy in driving neurodegeneration in MPS VII. The accumulation of damaged mitochondria due to impaired mitophagic clearance leads to oxidative stress and a progressive decline in cellular function, which is reminiscent of the mitochondrial dysfunction observed in Parkinson’s disease (PD) and Alzheimer’s disease (AD). The study showed that enhancing mitophagy using resveratrol (a known SIRT1 activator) improved mitochondrial clearance and rescued dopaminergic neurons from degeneration. Yet, there is an opportunity to consider more precise, mitophagy-specific therapies, such as those targeting the PINK1/Parkin pathway. If enhanced mitophagy alone could reduce the accumulation of depolarized mitochondria, then this approach may offer more targeted therapeutic outcomes compared to global autophagy activation. Exploring this concept in MPS VII and similar diseases may reveal novel therapeutic strategies for not just LSDs but other neurodegenerative conditions as well.

#v-image(path: "/images/tisha4.jpg", caption: "Schematic representation of the mechanism of neurodegeneration in the MPS VII fly. In the wild type (WT) fly brain, a healthy mitochondrial pool is maintained by the clearance of the damaged mitochondria through properly functional mitophagy. This mitochondrial quality control helps in maintaining normal brain ATP levels. Autophagy deficiency in the MPS VII (CG2135/) fly brain led to mitophagy defect, causing the accumulation of damaged mitochondria. This resulted in depleted ATP levels, triggering apoptotic cell death in the MPS VII fly brain. [13] ", position: bottom)

== Resveratrol Treatment: A Therapeutic Intervention

A major highlight of the study was the demonstration that resveratrol, a natural compound found in red wine and certain plants, treatment could rescue mitochondrial and neuronal defects in CG2135−/− flies. Resveratrol-treated flies showed increased survival under starvation conditions and restored Atg1 transcript levels, indicating improved autophagy initiation. These findings suggest that resveratrol exerts its neuroprotective effects by enhancing mitophagy and restoring mitochondrial function. However, additional studies are needed to determine whether resveratrol acts solely through SIRT1 activation or involves other pathways such as AMPK signaling or direct modulation of lysosomal activity.

== Broader Implications: Connecting the Dots to Other Neurodegenerative Disorders

While the study centers on MPS VII, the findings have far-reaching implications for understanding neurodegenerative diseases more broadly. Conditions such as PD, AD, and ALS share a common theme of defective autophagy and lysosomal dysfunction, which contributes to the accumulation of cellular waste, including damaged mitochondria. The research demonstrated that both mitochondrial dysfunction and autophagic blockade play crucial roles in the pathophysiology of MPS VII, reinforcing the idea that these pathways are central to a wide range of neurodegenerative disorders.

== Concluding Thoughts: A Roadmap for Future Research
In conclusion, this research provides critical insights into the role of mitophagy in MPS VII and its broader implications for neurodegenerative diseases. The study’s results underscore the importance of defective autophagy and mitophagy in neuronal degeneration, showcasing both the value and the limitations of Drosophila as a model for human neurodegeneration. The next step should be to validate these findings in mammalian models to better understand their translational potential. Ultimately, the concept of enhancing cellular clearance mechanisms, whether through compounds like resveratrol or novel mitophagy-specific agents, holds promise for treating not only MPS VII but also a wide spectrum of neurodegenerative disorders.

#auth-profile(
  imagePath: "/images/tishaFace.jpeg",
  info: "Student at Indian Institute of Science Education & Research (IISER), Kolkata | Aspiring Biologist | KVPY Scholar | MITACS GRI'23 | MUN.",
  width: 80%,
)
#references(
  refsFile: "/subfiles/tishaRefs.yml",
  breakAfter: 6,
)
