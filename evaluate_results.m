%% Parameters
% Directory with your results
%%% Make sure the file names are as exactly %%%
%%% as the original ground truth images %%%
input_dir = fullfile(pwd,'your_results');

% Directory with ground truth images
GD_dir = fullfile(pwd,'utils','ground_truth');

% Number of pixels to shave off image borders when calcualting scores
shave_width = 4;

% Set verbose option
verbose = true;

%% Calculate scores and save
addpath utils
scores = calc_scores(input_dir,GD_dir,shave_width,verbose);

% Saving
save('your_scores.mat','scores');