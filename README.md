# [The PIRM Challenge on Perceptual Super-Resolution](https://www.pirm2018.org/PIRM-SR.html)
The PIRM-SR Challenge will compare and rank methods for <b>perceptual</b> single-image super-resolution. State-of-the-art methods in terms of perceptual quality (e.g. [SRGAN](https://arxiv.org/pdf/1609.04802.pdf)) are rated poorly by "simple" distortion measures such as PSNR and SSIM. Therefore, in contrast to previous challenges, the evaluation and ranking will be done in a perceptual-quality aware manner based on [[Blau and Michaeli, CVPR'18]](https://arxiv.org/pdf/1711.06077.pdf). This unified approach quantifies the accuracy and perceptual quality of algorithms jointly, and will enable perceptual-driven methods to compete alongside algorithms that target PSNR maximization.

For further details see the [challenge website](https://www.pirm2018.org/PIRM-SR.html).

##  Self-validation Code
This Matlab code computes the RMSE and perceptual scores for your method's outputs on the self-validation set.

### Quick Start
1. Copy your outputs into the ```your_results``` folder in the base directory.
2. Copy the [validation/test set](https://www.pirm2018.org/dataset.html) (HR images only) into the ```self_validation_HR``` folder.
3. Download the [Ma et al. code](https://github.com/chaoma99/sr-metric), and extract it into the ```utils/sr-metric-master``` folder.
4. Run the ```evaluate_results.m``` script.

### Troubleshooting
Depending on your operating system, you may need the recompile the MEX files in the matlabPyrTools toolbox. If so:
1. Run ```utils/sr-metric-master/external/matlabPyrTools/MEX/compilePyrTools.m```
2. Copy the generated MEX files into the parent directory ```utils/sr-metric-master/external/matlabPyrTools```

Note: in Linux or OS you should also change line 82 in ```mex_regressionRF_predict.cpp``` to: ```plhs[0]=mxCreateNumericMatrix(n_size,1,mxDOUBLE_CLASS,mxREAL);```
Pre-compiled mex files (for OS, Linux and Win) are also available at this [link ](https://www.dropbox.com/s/edm76nhxhiouezu/RF_Reg_C.zip?dl=0)(Thank you [Muhammad Haris](https://github.com/alterzero) for the solution).

### Dependencies
- [No-reference metric for SR by Ma et al.](https://sites.google.com/site/chaoma99/sr-metric)
- [NIQE no-reference metric by Mittal et al.](https://doi.org/10.1109/LSP.2012.2227726)


<br>This code is distributed only for academic research purposes only.
<br>For other purposes, please contact Roey Mechrez: roey (at) campus.technion.ac.il
