controller.rate.roll.k = 1.0;
controller.rate.roll.p = 0.044;
controller.rate.roll.i = 0.05;
controller.rate.roll.d = 0.0012;
controller.rate.roll.int_lim = 101;
controller.rate.roll.max = 2.0;
controller.rate.pitch.k = 1.0;
controller.rate.pitch.p = 0.044;
controller.rate.pitch.i = 0.05;
controller.rate.pitch.d = 0.0012;
controller.rate.pitch.int_lim = 100;
controller.rate.pitch.max = 2.0;
controller.rate.yaw.k = 1.0;
controller.rate.yaw.p = 0.044;
controller.rate.yaw.i = 0.05;
controller.rate.yaw.d = 0.0012;
controller.rate.yaw.int_lim = 100;
controller.rate.yaw.max = 2.0;

controller.attitude.roll.p = 4.0;
controller.attitude.pitch.p = 4.0;
controller.attitude.yaw.p = 4.0;

controller.velocity.xy.p = 1.0;
controller.velocity.xy.i = 0.1;
controller.velocity.xy.d = 0.01;
controller.velocity.xy.max = 10;
controller.velocity.z.p = 1.0;
controller.velocity.z.i = 0.1;
controller.velocity.z.d = 0.01;
controller.velocity.z.max_up = 100.0;
controller.velocity.z.max_down = -100.0;

controller.position.xy.p = 1.0;
controller.position.z.p = 1.0;