%% Parameters
% Directory with your results
%%% Make sure the file names are as exactly %%%
%%% as the original ground truth images %%%
input_dir = fullfile(pwd,'your_results');

% Directory with ground truth images
GT_dir = fullfile(pwd,'self_validation_HR');

% Number of pixels to shave off image borders when calcualting scores
shave_width = 4;

% Set verbose option
verbose = true;

%% Calculate scores and save
addpath utils
scores = calc_scores(input_dir,GT_dir,shave_width,verbose);

% Saving
save('your_scores.mat','scores');

%% Printing results
perceptual_score = (mean([scores.NIQE]) + (10 - mean([scores.Ma]))) / 2;
fprintf(['\n\nYour perceptual score is: ',num2str(perceptual_score)]);
fprintf(['\nYour RMSE is: ',num2str(sqrt(mean([scores.MSE]))),'\n']);
