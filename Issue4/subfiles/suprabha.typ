#import "/template-files/inscight-template.typ": *

#let title = "Cosmic music of the Sun: Rossby and other inertial modes"
#let authors = ("Suprabha Mukhopadhyay",)
#let affiliations = ("Solar and Stellar Interiors Department, Max Planck Institute for Solar System Research, Göttingen, Germany",)
#let abstract = "Astrophysical bodies emit a certain kind of \"music\" in the form of inertial modes of various frequencies. This article explores the recerntly observed inertial modes of our Sun, going into what these waves can tell us about the behaviour of the Sun and how they can affect us."
#let coverImage = "suprabha.jpeg"
#let authorImage = "suprabha.jpg"
#let authorInfo = "*Suprabha Mukhopadhyay* is a physics enthusiast. He is interested in the physics of the Sun and is studying waves in the Sun for his PhD at Max Planck Institute for Solar System Research, Göttingen, Germany. Earlier, he studied the long-term modulation of solar activity during his MS thesis at CESSI, IISER, Kolkata. Apart from Physics, he likes coding. In his free time, he does not miss any opportunity to travel and explore different places."
#let refsFile = "/dataFiles/suprabha.yml"
#let received = (month: 03, day: 6, year: 2025)
#let category = "Physics"
#let reviewedBy = ("Debanuj C", "Aranya M", "Swarnendu S") 
#let important-color = orange

#show: section.with(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  title: title, 
  authors: authors,
  authorAffiliations: affiliations,
  abstract: abstract,
  coverImage: "/covers/" + coverImage,
  sideImageFraction: 50%,
  authorImage: "/authFaces/" + authorImage,
  authorInfo: authorInfo,
  authorImageWidth: (40%,40%),
  refsFile: refsFile,
  category: category,
  received: received,
  reviewedBy: reviewedBy,
  // breakAfter: (12,),
)

// begin. This is necessary for typst-to-html conversion, do not remove this.

#dcap("Did you know that the same kind of waves, which help shape Earth's weather patterns, may also ripple through the Sun’s atmosphere? Rossby waves are a special class of inertial waves which are restored by the Coriolis force in a rotating body [1,2]. Rossby waves are particularly caused by a rotating sphere's special property that the Coriolis force's tangential component changes with latitude. They are a cornerstone in Earth’s climate science [3,4].  But what happens when we look for these waves on our star? Imagine the Sun as a musical instrument where waves resonate differently within its rotating plasma. Researchers only recently attempted to observe such inertial waves on the Sun [5]. Why do we care about these waves in the Sun? Because they help us understand how the Sun spins, how it ages, how the plasma inside the Sun behaves, and even how it influences space weather — all things that affect our life on Earth in ways we’re only beginning to understand! In this article, I explore how we can observe solar inertial modes and why they could not be identified in the Sun earlier. I also discuss their importance for the Sun, the fundamental physics of these modes and the future of this field of research.")

#img(path: "/images/fig1.png", caption: "Eigenmodes of the high-latitude inertial mode and the equatorial Rossby modes from HMI observations and eigenmode calculations, adapted from [7]. The eigenmode calculations use the 2D model in the solar convection zone, as explained in [8]. Latitudinal and longitudinal velocities are represented by $U_theta$ and $U_phi$, respectively. Azimuthal wavenumber, denoted by m, is the number of wavelengths around the equator for a mode. +/- indicates that the observed eigenfunctions are north-south symmetric or antisymmetric in that specific component. ", position: bottom, width: 58%)
== How do we observe solar inertial modes?

When the rotationally driven inertial waves are trapped inside a closed system like a spherical shell, they are called inertial modes. To understand why observing inertial modes on the Sun took so long, we must consider how they behave in rotating systems.

Inertial modes oscillate with periods set by the rotation rate of the system. Any inertial oscillations must have their frequency ranging from $-2Omega_0$  to $2Omega_0$ for a system rotating at an angular frequency $Omega_0$ [2]. Now, consider the rotation rate of the Earth and the Sun. The Earth takes one day to complete one rotation, while the Sun takes about 27 days to complete a rotation. The period of inertial oscillations in the Sun will be much larger than in a fast-rotating body like the Earth. Hence, we need long-term, continuous observations of the flows on the solar surface to identify inertial oscillations in the Sun. This has been made possible with recent high-resolution observations of the space-based telescope Helioseismic and Magnetic Imager (HMI) from the Solar Dynamics Observatory (SDO), a spacecraft of NASA. 
First, the classical Rossby modes were identified using the Fourier transformation in longitude and time at each latitude of the solar surface flows obtained using this telescope [5]. The Fourier transformation in longitude fixes the azimuthal wavenumber m, which is the number of wavelengths around the equator for a mode. Then the first observations were combined with the observations of the Michelson Doppler Imager (MDI) from the Solar and Heliospheric Observatory (SOHO),  a spacecraft of the European Space Agency (ESA), using a technique called time-distance helioseismology [6]. 

Later, many other inertial modes were observed on the Sun using observations from HMI and the Global Oscillation Network Group (GONG) from the National Solar Observatory (NSO), headquartered in Boulder, USA [7]. Fig. 1 shows the eigenmodes of the high-latitude inertial mode and the classical equatorial Rossby mode adapted from [7]. The high-latitude inertial mode with azimuthal wavenumber m = 1 has the highest power in the observations, and it was found to be driven by the temperature difference between the poles and the equator of the Sun due to the difference in the rotation rates [7,8]. This is termed baroclinic instability. The unstable high-latitude mode has recently been identified in daily-cadence solar Doppler Grams, including the ones from the Mount Wilson Observatory (MWO), at Los Angeles, USA, since 1967 [9]. Fig. 1 compares the observed eigenmodes with the 2-dimensional eigenmode computations of [8]. Scientists have recently compiled a review on the observations and modelling of different classes of solar inertial modes [10], which can help one get a nice overview of the recent advances in this field of research. 

#img(path: "/images/fig2.png", caption: "Plot of the difference between the rotation rates at equator and poles against the same for temperature for 2D axisymmetric simulations and 3D simulations with high-latitude modes for different deviations from the background adiabatic temperature gradient (adapted from [17]). The deviations increase with the case numbers. The grey slice shows the range of differences in the rotation rate observed in the Sun.", position: top, width: 48%)

== Why are they important?

Rossby waves on the Earth are vital because they affect weather patterns on the Earth. Why would they be interesting in the Sun, given that there are no clouds, rain or floods in the Sun? In contrast to Earth, solar inertial modes can reveal secrets about its hidden internal dynamics. Helioseismology using pressure modes can tell us a lot about the solar interior [11-12]. But pressure modes can’t tell us much about viscosity, heat flow, or latitudinal temperature variations in the interior of the Sun. These quantities are essential for global solar simulations as well as modelling and predicting the solar magnetic activity. In particular, there exists disagreement between the velocity amplitudes in simulations and observations, termed the convective conundrum [13-15]. The inertial modes have been demonstrated to be sensitive to many parameters, which are not well-constrained yet [7,8,16]. Thus, inertial modes can aid in the Sun's diagnostics and help solve the conundrum.
Furthermore, unstable high-latitude inertial modes have also been found to play a dynamical role in the Sun by controlling the solar differential rotation [17]. Fig. 2 illustrates how these modes act like a feedback system, regulating the Sun’s rotational and temperature differences across latitudes. The different cases have different degrees of convective instability, increasing with the case numbers, as described in [17]. In the absence of these modes, the difference between the rotation rates and temperatures at the poles and the equator can become much larger compared to the cases with the modes. In the presence of the modes, the differences are limited to a specific value, close to the observed difference in the rotation rate between the pole and the equator.


== The physics behind the inertial waves

For those interested in the physics, here’s how scientists break it down mathematically, starting from the fundamental fluid dynamics. A fluid's spinning or swirling motions can be quantified as a quantity called vorticity. Inertial modes can be described as waves of this quantity called vorticity [2].  Hence, analysing the vorticity budgets of the inertial modes is instrumental to understanding their physics, as done in [18]. Starting from the equation for the conservation of momentum of the fluid, we can obtain the equation for vorticity by taking a curl, which helps get the system's spin from velocity. To analyse how the different physical effects determine the frequency of the modes, we transform the equation of vorticity $zeta$ (radial and z-components, where z-axis is along the axis of rotation) to the following form[18].

$ omega |zeta_r|^2 = cal(G)_"planetary" + cal(G)_"comp" + cal(G)_"other" $
$ omega |zeta_z|^2 = cal(W)_"comp" + cal(W)_"topographic" + cal(W)_"other" $

Here $omega$ denotes the angular frequency of the mode studied. We decompose the vorticity equation into the different physical effects. The planetary $beta$ effect (denoted by planetary) is caused by the latitudinal variation of the tangential component of the Coriolis force [2].  It is the primary driver of the Rossby modes. The compressional $beta$ effect (denoted by comp) is caused by the change in background density when a fluid parcel moves along the radius [2]. It becomes essential only when there are radial motions associated with the mode. Finally, we also have the topographical $beta$ effect (denoted by topographic) caused by trapping the fluid parcels in a spherical shell [1]. The sign of the terms in the above equations associated with these physical quantities determines the direction of propagation of the modes. This is because the frequency is multiplied by the absolute value of the different vorticity components, which is always a positive real number. Fig. 3 shows how the various physical effects determine the frequency of a mode by promoting their propagation either in the direction of rotation (prograde) or against the direction of rotation (retrograde). It shows the example of the high-frequency retrograde inertial mode discovered in [19]. This is an interesting mode driven by the combined effects of planetary $beta$ effect, compressional $beta$ effect and topographical $beta$ effect, as found recently [18]. The compressional $beta$ effect drives it prograde, while the other physical effects compete to drive the mode retrograde. Furthermore, the importance of compressional $beta$ effect due to the presence of radial motions in the inertial modes makes the inclusion of background density variations necessary while modelling the solar inertial modes, as found in [18]. This is in contrast to the inertial modes on the Earth, where the background density can be assumed to be constant because of slight variations. On the other hand, density drops off steeply with radius in the Sun.

== What does the future hold?

There are many aspects of developments in the modelling of inertial modes. The inertial modes are sensitive to different physical quantities in the solar interior. It will be fascinating if the inertial modes can precisely reveal these yet unknown physical quantities to help solve the convective conundrum. Apart from that, how the inertial modes affect or are affected by solar magnetic fields is not well understood. Also, we do not yet know how the solar inertial modes are affected by different layers of the Sun, like the radiative zone and the solar atmosphere. Furthermore, how the unstable high-latitude modes saturate is to be understood carefully, as their amplitude can not grow indefinitely over time. Many of these topics are actively explored at research institutes across the globe. As we unravel the Sun’s hidden rhythms, we’re not just doing solar science — we’re playing catch-up with the universe’s cosmic symphony. The future promises more discoveries, and maybe we’ll soon predict solar storms even more accurately than we forecast monsoons.

#img(path: "/images/fig3.png", caption: "Quantification of the relative importance of planetary $beta$ effect, compressional $beta$ effect (comp), topographical $beta$ effect and other terms in the vorticity equation to determine the propagation and frequency of the high-frequency retrograde inertial mode with azimuthal wavenumber m = 10 (adapted from [18]). A negative quantity implies that the associated physical effect promotes propagation in the direction opposite to rotation. In contrast, a positive quantity implies that its physical effect promotes propagation in the direction of rotation. ", position: top, width: 95%)
