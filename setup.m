% Setup px4_6dof_quadrotor_x simulator 

%% Setup environment
clear
clc
close all

dir_path=pwd;

os_type = ispc;

if ~os_type
    backslash_vec=strfind(dir_path,'/');
else
    backslash_vec=strfind(dir_path,'\');
end

dirnames={'px4_simulink_simulator'};   % change according to your needs
for i=1:numel(dirnames)
    addpath(genpath([dir_path(1:backslash_vec(end)),dirnames{i}]));
end

clear dir_path backslash_vec dirnames i os_type
%% Plant parameters
load_plant;

%% Control gains
load_controller;

%% Open main model
load('busses.mat')
open('px4_6dof_quadrotor_bus.slx')