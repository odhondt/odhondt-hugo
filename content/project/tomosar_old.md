+++
summary = ""
tags = []
math = false
external_link = ""
date = "2016-12-24T19:54:07+01:00"
title = "Information extraction from tomographic SAR data"
image = ""
image_preview = "fig_tomosar.png"

+++

## Project summary

This project deals with the automatic interpretation of tomographic SAR (TomoSAR) data. TomoSAR allows to reconstruct 3D objects from several 2D images acquired by an Earth observation system called Synthetic Aperture Radar (SAR). A SAR is able to provide images by sending and receiving electromagnetic waves in the microwave domain. By stacking images acquired with different incidence angles and applying high resolution signal processing methods, it is possible to reconstruct 3D reflectivity profiles. Our main goal is to develop pattern recognition algorithms to provide a semantic interpretation of such data.

![](/img/fig_tomosar.png)

## Sub-topics

### Building extraction from 3D point clouds

This sub-topic consists in exploiting both image radiometry and 3D point geometry to detect and classify building parts. First, a geometric primitive extraction process exploiting image and 3D information allows us to separate planar patches. These patches are then classified by geometric rules to identify building parts such as facades and roofs. Thanks to a parametric approach a de-noised 3D representation of buildings is possible.

![](/img/fig_isprs.png)


#### Related publications

O. D'Hondt, S. Guillaso and O. Hellwich _Towards a Semantic Interpretation of Urban Areas with Airborne Synthetic Aperture Radar Tomography_ ISPRS Annals of Photogrammetry, Remote Sensing and Spatial Information Sciences, 2016, III-7, 235-242 
[link](http://www.isprs-ann-photogramm-remote-sens-spatial-inf-sci.net/III-7/235/2016/isprs-annals-III-7-235-2016.pdf)

O. D'Hondt, S. Guillaso and O. Hellwich _Geometric primitive extraction for 3D reconstruction of urban areas from tomographic SAR data_, Proceedings of JURSE 2013 - Joint Urban Remote Sensing Event 2013, Sao Paulo, Brazil 
[link](http://ieeexplore.ieee.org/document/6550701/)

O. D'Hondt, S. Guillaso and O. Hellwich, _Automatic extraction of geometric structures for 3D reconstruction from Tomographic SAR data_, Proceedings of IGARSS'12 Conference, 2012, Munich, Germany 
[link](http://ieeexplore.ieee.org/document/6350507/)

### Point cloud improvement by image filtering

An important processing step in the TomoSAR pipeline is speckle filtering. Due to the randomness of natural media, image intensities are affected by speckle which can be modeled as a multiplicative noise. Additionally, de-correlation effects due to spatial and temporal baselines as well as surface roughness and volume diffusion result in noisy phases, hindering the 3D reconstruction. Here, we develop adaptive filtering methods that operate in the image domain and improve height estimation in the 3D point clouds. Our filtering methods are based on the successful the nonlocal framework adapted to covariance matrices thanks to the use of Riemannian distances on the manifold of Hermitian positive definite matrices.


![](/img/fig_blf.png)


#### Related publications

O. D'Hondt, C. Lopez-Martinez, S. Guillaso and O. Hellwich _Non-Local Filtering Applied to 3D Reconstruction of Tomographic SAR Data_ Submitted to IEEE Transactions on Geoscience and Remote Sensing

O. D'Hondt, S. Guillaso, C. Lopez-Martinez and O. Hellwich _Evaluation of a Bilateral Filtering Approach for Tomographic SAR Denoising_ Proceedings of EUSAR 2016: 11th European Conference on Synthetic Aperture Radar, 2016, 1-4 
[link](http://ieeexplore.ieee.org/document/7559486/)


### Machine learning for image classification

Here, we focus on developing machine learning methods to perform a pixel-based semantic labelling of TomoSAR image stacks. It is well known that under different incidence angles, backscattering properties of natural and man-made targets vary. Moreover,  TomoSAR contains  phase information related to the position of scatterers in the 3D space. Therefore, we exploit these information to design relevant feature allowing a classification of the different types of objects present in a scene according to semantic categories such as 'forest', 'building', 'crop', 'water', 'road' and so on.  

![](/img/fig_ML.png)

#### Related publications

In progress.
