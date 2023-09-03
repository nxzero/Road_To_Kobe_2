# To do list 

##  Averaged equations for disperse two-phase flow made of fluid particles
* Re demonstrate the Taylor expansion formula with the method of Pathz
* Re-do the example section. It must be about momentum equation and the usual closure terms in Newtonian viscosity term. It has never been done for arbitrary particles + the stress equation is actually interesting. 
  * Include fist mass conservation equations  :
    * $\left<\phi_k\right>$ equations     --->KNOWN
    * $\left<\delta_I\right>$ equation     --->KNOWN
    * $m_\alpha$ equation  --->KNOWN
    * $s_\alpha$ equation --->KNOWN
    * $M_\alpha$ equation --->not usually used 
      * talk about how we recover the fiber equations and the PBE equations ? 
  * Include the momentum conservation :
    * $D\left<\rho_k \textbf{u}_k\right>/Dt$ --->KNOWN but not with all the stresses 
      * Reformualte the drag force term properly with the pressure gradient and the binary force. 
      * inter particle interactions (lok zhang 2023 for sigma_c)
      * Newtonnian stress (with fluid particle)
      * Discuss PFP, 
      * fluid fluctuation
      * first moment of fluid traction. 
      * How the stress tensor is or isn't symmetric ? Prosperreti (2004) 
    * $D \overline{m_\alpha \textbf{u}_\alpha}^p/Dt$ --->not KNOWN for arbitrary fluid particle of different size with all the stresses 
      * How the stress is expressed there (same but without the averaged newtonnian stress)
    * $D \overline{P_\alpha}/Dt$ --> not knwon in this many details and tension surface. 
      1. Discus the torque equation with inter particular torque 
         * Decompose the torque with Nearest-particle statistics ? (limited interest)
      2. Make the trace equation 
      3. Discus the stress equation and say it is relevent for solid particle and make the link with einstein equaivalent viscosity and the new paper of wolgemuth 2023.
        * give the good formulation of teh first moment with surface tension. 

A FAIRE 
We consider only interaction through the fluid meaning that the "contact stress doesn't exist. Indeed the microscopic model assume no particles contact. 

Or we consider all the forces merged into $h^h$ enabling us to compute the $\Sigma_{PFP}$ + $\Sigma_c$

Exprimer le term d'échange entre pahse comme in Wang 2021 eq. (3). voir aussi Pathz

And la partie : The hybrid model exprimer le term $\phi_2 \nabla \Phi$ hors de la divergence 


A LIRE : 

Morphology of clean and surfactant-laden droplets
in homogeneous isotropic turbulence




##  Averaged equations for dispersed three-phase flows including triple lines topology 

1. Objective derive the average drag due to triple contact line 


##  Averaged inter-particle scale equation for disperse two-phase flow made of fluid particles

1. Introduction 
   * Generic balance of the hybrid model 
2. The nearest particle statistics topological equation
3. Generic relative equations
4. Average of the equations and moment equations 
   * Link with kinetic theory
   * Moments equation
   * Link between the general averaged equation and the moments nearest equations
5. Discuss the momentum equation 
   * How the particle-fluid-particle stress is linked with the relative position. 
6. conclusion 
    We have demonstrated how to derive equation that describe the mean interparticular scale kinematic and dynamic of particle 


## Pseudo turbulence and drift velocity for mono disperse water-oil emulsion

1. Introduction 
2. Mathematical Medeling 
   1. Local scale equations (optinal)
      * continuous phase 
      * Lagrangian phase 
   2. Averaged equations
      * Introduce the average procedure and insists on the 
      * continuous phase
      * Lagrangian phase 1$^{st}$ order  
3. Numerical Methodology 
   1. Simulation Set up
      * Basilsik 
      * Solved Equations
      * dimensionless parameters  (might be pres in introduction )
      * Table of simulations
   2. The no-coalesence.h algorithm
   3. Preliminary tests 
      * Loisy rising array (ask stephane why it work so well)
      * Statistical convergence of the stresses (appendix  ?)
      * Mesh convergence on Big array which are statistically converged 
4. Results
   1. Rising velocity. 
   2. Velocity fluctuation 
   3. Particle-fluid-particle stress 
5. Conslusion 
   1. We developed a new algorithm which enable the computation of no coalescing droplets leading to statistically representative simulation 
   2. We provided interesting expression for closure terms 


NOTE : 

* Make the $N_b = 125$ validation
* Make the rising to the interface validation 

A LIRE 
* Sedimentation of a dilute suspension of rigid spheres at intermediate Galileo numbers: the effect of clustering upon the particle motion

* On the clustering of low-aspect-ratio oblate spheroids settling in ambient fluid

A FAIRE 

* Add a picture of the domain 
* 
## Statistics (look at Zhang 2023 not to bad)

1. Introduction :
   * In the objective of creating a clear coalescence kernel it is important to discuss the actual physics of interaction 
   * To do so we use nearest averaged statistics. 

2. Theoretical background 


4. Conclusion :
   1.  We clarify what exactly happen between pairs of particles in an emulsion 