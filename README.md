# General Info

This repository contains Simulink models of 6DOF systems based on [px4 autopilot](https://github.com/PX4/PX4-Autopilot) control system.

# Table of contents

1. [Installation](#installation)
2. [6DOF Quadcopter](#6dof-quadcopter)
3. [References](#references)

# Installation

All models built and tested on [Matlab/Simulink](https://www.mathworks.com/products/new_products/latest_features.html) 2021b. 

Clone the repository to your PC, add the folder to Matlab path and open the model.


# 6DOF Quadrotor

![](https://user-images.githubusercontent.com/58637596/145676975-8887eae0-8891-474d-96b8-d06f6dcfb201.png)

* `px4_6dof_quadrotor.slx` :

The 6DOF model based on [this](http://www.ritravvenlab.com/uploads/1/1/8/4/118484574/ferry.pdf) thesis work. 

TODO:
- [] Add position and velocity controllers.
- [] Convert signals to bus elements.
- [] Add INS model.
- [] Add EKF based on px4 architecture.
- [] Add visualization to the simulation.
- [] Add motor models instead of the approximate ones.

# References

1. [PX4-Autopilot on github](https://github.com/PX4/PX4-Autopilot)  
2. [PX4 Attitude controller schematics](https://www.researchgate.net/figure/Position-and-attitude-controller-structure-of-a-Px4-based-UAV-33_fig3_341902425)
3. [MAVROS Controllers](https://github.com/Jaeyoung-Lim/mavros_controllers)
4. [Quadrotor plant and control on simulink](http://www.ritravvenlab.com/uploads/1/1/8/4/118484574/ferry.pdf)



