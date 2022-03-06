% Setup px4_6dof_quadrotor_x simulator 

%% Setup environment
clear
clc
close all

dir_path=pwd;

backslash_vec=strfind(dir_path,'/'); 

dirnames={'px4_simulink_simulator'};   % change according to your needs
for i=1:numel(dirnames)
    addpath(genpath([dir_path(1:backslash_vec(end)),dirnames{i}]));
end

clear dir_path backslash_vec dirnames i
%% Plant parameters
parameters_plant;
load('plant_buses.mat')
%% Control gains
gains_controller;