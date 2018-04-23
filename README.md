# [The PIRM Challenge on Perceptual Super-Resolution](https://www.pirm2018.org/PIRM-SR.html)
The PIRM-SR Challenge will compare and rank methods for <b>perceptual</b> single-image super-resolution. State-of-the-art methods in terms of perceptual quality (e.g. <a href="https://arxiv.org/pdf/1609.04802.pdf" target="_blank">SRGAN</a>) are rated poorly by "simple" distortion measures such as PSNR and SSIM. Therefore, in contrast to previous challenges, the evaluation and ranking will be done in a perceptual-quality aware manner based on <a href="https://arxiv.org/pdf/1711.06077.pdf" target="_blank">[Blau and Michaeli, CVPR'18]</a>. This unified approach quantifies the accuracy and perceptual quality of algorithms jointly, and will enable perceptual-driven methods to compete alongside algorithms that target PSNR maximization.

For further details see the <a href="https://www.pirm2018.org/PIRM-SR.html" target="_blank">challenge website</a>.

##  Self-validation Code
This Matlab code computes the mean MSE and Ma et al. scores</a> for your methods outputs on the self-validation set.

### Quick Start
1. Create a directory named ```your_results``` and copy your outputs into it.
2. Download the [Ma et al. code](https://github.com/chaoma99/sr-metric), and extract it into the ```utils/Ma_et_al_code``` directory.
3. Run the ```evaluate_results.m``` script.

### Troubleshooting
Depending on your operating system, you may need the recompile the MEX files in the matlabPyrTools toolbox. If so:
1. Run ```utils/sr-metric-master/external/matlabPyrTools/MEX/compilePyrTools.m```
2. Copy the generated MEX files into the parent directory ```utils/sr-metric-master/external/matlabPyrTools```

### Dependencies
- [No-reference metric for SR by Ma et al](https://sites.google.com/site/chaoma99/sr-metric)
- [MatlabPyrTools](https://github.com/LabForComputationalVision/matlabPyrTools)


<br>This code is distributed only for academic research purposes only.
<br>For other purposes, please contact Roey Mechrez: roey (at) campus.technion.ac.il
