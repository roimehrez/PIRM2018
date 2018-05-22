function scores = calc_scores(input_dir,GT_dir,shave_width,verbose)

addpath(genpath(fullfile(pwd,'utils')));

%% Loading model
load modelparameters.mat
blocksizerow    = 96;
blocksizecol    = 96;
blockrowoverlap = 0;
blockcoloverlap = 0;

%% Reading file list
file_list = dir([input_dir,'/*.png']);
im_num = length(file_list);

%% Calculating scores
scores = struct([]);

for ii=1:im_num
    if verbose
        fprintf(['\nCalculating scores for image ',num2str(ii),' / ',num2str(im_num)]);
    end
    
    % Reading and converting images
    input_image_path = fullfile(input_dir,file_list(ii).name);
    input_image = convert_shave_image(imread(input_image_path),shave_width);
    GD_image_path = fullfile(GT_dir,file_list(ii).name);
    GD_image = convert_shave_image(imread(GD_image_path),shave_width);
    
    % Calculating scores
    scores(ii).name = file_list(ii).name;
    scores(ii).MSE = immse(input_image,GD_image);
    scores(ii).Ma = quality_predict(input_image);
    scores(ii).NIQE = computequality(input_image,blocksizerow,blocksizecol,...
        blockrowoverlap,blockcoloverlap,mu_prisparam,cov_prisparam);
end

end
