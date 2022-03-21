plant.motor.r = 0.127; % [ohm] - resistor
plant.motor.l = 1.6968e-4; % [H] - inductor
plant.motor.k_t = 1/104.7197; % [N*m/A] - torque constant
plant.motor.k_b = 1/104.7197; % [V/rad/sec] - back EMF constant
plant.motor.j_m = 3.38e-7; % [kg*m^2] - shaft inertia
plant.motor.max_v = 12.6; % [V] - maximum voltage
plant.motor.max_i = 30.0; % [A] - maximum amp
plant.motor.k_k = 1000; % propeller static flexability
plant.motor.k_v = 1; % propeller dynamic flexability
plant.motor.j_l = 2.8e-6; % propeller inertia
plant.motor.dynamic_time_sample = 1e-5; % time sample for the dynamic part of simulation
plant.motor.electric_time_sample = 1e-3; % time sample for electirc part of simulation

plant.mechanical.c_t = 5.947e-6; % thrust constant
plant.mechanical.c_q = 7.9217e-7; % drag constant
plant.mechanical.d = 0.165; % quad arm length
plant.mechanical.i_xx = 0.00115118; % i_xx on the diagonal inertial matrix
plant.mechanical.i_yy = 0.00165651; % i_yy on the diagonal inertial matrix 
plant.mechanical.i_zz = 0.00190742; % i_zz on the diagonal inertial matrix
plant.mechanical.j_l = plant.motor.j_l;
plant.mechanical.m = 0.9; % [kg] quadrotor mass
plant.mechanical.a_x = 0.007; % [kg/s] drag coefficient - x axis
plant.mechanical.a_y = 0.007; % [kg/s] drag coefficient - y axis
plant.mechanical.a_z = 0.007; % [kg/s] drag coefficient - z axis

plant.ic.position.x = 0.0;
plant.ic.position.y = 0.0;
plant.ic.position.z = -10.0;
plant.ic.velocity.x = 0.0;
plant.ic.velocity.y = 0.0;
plant.ic.velocity.z = 0.0;

plant.general.g = 9.81; % gravity