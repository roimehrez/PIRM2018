# [PIRM2018 - Workshop and Challenge on  Perceptual Image Restoration  and Manipulation](https://www.pirm2018.org/)

## The Workshop
A key goal in image restoration, manipulation and generation, is to produce images that are visually appealing to human observers. In recent years, there has been great interest as well as significant progress in perceptually-aware computer vision algorithms. However, many works have observed a fundamental disagreement between this recent leap in performance, as evaluated by human observers, and the objective assessment of these methods by common evaluation metrics (e.g. PSNR, SSIM). This workshop will revolve around two main themes: (i) How to design algorithms which satisfy human observers, and (ii) How to evaluate the perceptual quality of such algorithms.

## The Challenges
The PIRM challenges will promote <i>perceptual</i> image restoration. State-of-the-art methods in terms of perceptual quality (e.g. <a href="https://arxiv.org/abs/1609.04802" target="_blank">SRGAN</a>) are rated poorly by "simple" distortion measures such as PSNR and SSIM. Therefore, in contrast to previous challenges, the evaluation and ranking will be done in a perceptual-quality aware manner based on <a href="https://arxiv.org/abs/1711.06077" target="_blank">[Blau and Michaeli, CVPR'18]</a>. This unified approach quantifies the accuracy and perceptual quality of algorithms jointly, and will enable perceptual-driven methods to compete alongside algorithms that target PSNR maximization.<br><br><!-- Prizes will be awarded to the challenge winners. In addition, c--> Challenge participants may submit papers for the ECCV workshop proceedings. Papers will be accepted based on: (i) academic quality, and (ii) challenge ranking.

## [The PIRM challenge on perceptual super resolution](https://www.pirm2018.org/PIRM-SR.html)
Single-image super-resolution has gained much attention in recent years. The appearance of deep neural-net based methods and the great advancement in generative modeling (e.g. GANs) has facilitated a major performance leap. One of the ultimate goals in super-resolution is to produce outputs with high visual quality, as perceived by human observers. However, many works have observed a fundamental disagreement between this recent leap in performance, as quantified by common evaluation metrics (PSNR, SSIM), and the subjective evaluation of human observers (reported e.g. in the <a href="https://arxiv.org/pdf/1609.04802.pdf" target="_blank">SRGAN</a> and <a href="https://arxiv.org/pdf/1612.07919.pdf" target="_blank">EnhanceNet</a> papers).
<div align='center'>
  <img src="img/church.svg" height="200px">
</div>
This observation caused the formation of two distinct research directions. The first is aimed at improving the performance according to conventional evaluation metrics (e.g. PSNR), which frequently produce visually unpleasing results. The second, targets high perceptual quality, which commonly performs poorly according to conventional metrics. Previous benchmarks and challenges are mostly relevant for the first line of works.
<div align='center'>
  <img src="img/PD_plot.svg" height="200px">
</div>
The PIRM-SR challenge will compare and rank <b>perceptual</b> single-image super-resolution. In contrast to previous challenges, the evaluation will be done in a perceptual-quality aware manner based on <a href="https://arxiv.org/pdf/1711.06077.pdf" target="_blank">[Blau and Michaeli, CVPR'18]</a>, and not based solely on distortion measurement (e.g. PSNR/SSIM). This unified approach quantifies the accuracy and perceptual quality of algorithms jointly, and will enable perceptual-driven methods to compete alongside algorithms that target PSNR maximization. <br><br><small>* References for the methods appearing in the figures above can be found in this <a href="https://arxiv.org/pdf/1711.06077.pdf" target="_blank">paper</a>

## Task and Evaluation
### The Task
4x super-resolution of images which were down-sampled with a bicubic kernel.
### Evaluation
The perception-distortion plane will be divided into three regions defined by thresholds on the MSE. In each region, the winning algorithm is the one that achieves the best perceptual quality as quantified by the recent metric of <a href="https://sites.google.com/site/chaoma99/sr-metric" target="_blank">[Ma et al.]</a>.
<div align='center'>
  <img src="img/regions.svg" height="200px">
</div>
See <a href="https://arxiv.org/abs/1711.06077" target="_blank">[Blau and Michaeli, CVPR'18]</a> for an explanation of the rationale behind this evaluation method.
### Regions
The three regions are defined by
Region 1: TBD
Region 2: TBD
Region 3: TBD
### Data for evalutaion
Algorithms will be evaluated on a set of 100 images. The validation and self-validation set can be downloaded [here](https://www.pirm2018.org/PIRM-SR.html#dates).
### Submission
Submit your results on the validation set to see your ranking on the <a href="#leaderboard">leaderboard</a>. After <a href="https://www.pirm2018.org/PIRM-SR.html#register">registering</a>, you will receive submission instructions. During the validation phase (until July 17<sup>th</sup>), each group is limited to 20 validation submissions in total.
### Self validation
Evaluate your results on your own with the self-validation set and code found in this repository. These are not the validation images, but have an equal distribution of scenes, quality etc.
