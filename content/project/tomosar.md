# TomoSAR - Information Extraction from Tomographic SAR Data

## Project summary

This project deals with the automatic interpretation of tomographic SAR (TomoSAR) data. TomoSAR allows to reconstruct 3D objects from several 2D images acquired by an Earth observation system called Synthetic Aperture Radar (SAR). A SAR is able to provide images by sending and receiving electromagnetic waves in the microwave domain. By stacking images acquired with different incidence angles and applying high resolution signal processing methods, it is possible to reconstruct 3D reflectivity profiles. Our main goal is to develop pattern recognition algorithms to provide a semantic interpretation of such data.

contact: [Olivier D'Hondt](http://www.cv.tu-berlin.de/menue/mitarbeiter/olivier_dhondt/)

![](./fig_tomosar.png)

## Sub-topics

### Point cloud improvement by image filtering

An important processing step in the TomoSAR pipeline is speckle filtering. Due to the randomness of natural media, image intensities are affected by speckle which can be modeled as a multiplicative noise. Additionally, de-correlation effects due to spatial and temporal baselines as well as surface roughness and volume diffusion result in noisy phases, hindering the 3D reconstruction. Here, we develop adaptive filtering methods that operate in the image domain and improve height estimation in the 3D point clouds. Our filtering methods are based on the successful the nonlocal framework adapted to covariance matrices thanks to the use of Riemannian distances on the manifold of Hermitian positive definite matrices.

![](./fig_nlm.png){width=720px}

#### Related publications

O. D'Hondt, C. Lopez-Martinez , S. Guillaso and O. Hellwich.    
**Nonlocal Filtering Applied to 3-D Reconstruction of Tomographic SAR Data.**  
IEEE Transactions on Geoscience and Remote Sensing, 2018, 56, 272-285.
[link](https://ieeexplore.ieee.org/document/8047474/)

O. D'Hondt, C. Lopez-Martinez, S. Guillaso and O. Hellwich.      
**Impact of non-local filtering on 3D reconstruction from tomographic SAR data.**  
IGARSS 2017: 2476-2479 [link](https://ieeexplore.ieee.org/document/8127495/)

O. D'Hondt, S. Guillaso, C. Lopez-Martinez and O. Hellwich.  
**Evaluation of a Bilateral Filtering Approach for Tomographic SAR Denoising.**  
EUSAR 2016, 1-4. [link](http://ieeexplore.ieee.org/document/7559486/)

### Completion and regularization of TomoSAR point clouds

3D point clouds extracted thanks to tomographic processing methods are often corrupted by noise and artifacts which need to be corrected. In this work, we propose a simple convex optimization formulation that exploits the geometric constraint that the line of sight between a sensor and a surface measurement must not be blocked by another surface. We demonstrate the ability of our method to denoise point clouds and fill holes on both synthetic data and experimental E-SAR data by the German Aerospace Center (DLR).

![](./fig_completion.png){width=480px}

#### Related publications

A. Ley, O. D'Hondt and O. Hellwich.   
**Regularization and Completion of TomoSAR Point Clouds in a Projected Height Map Domain.**  
IEEE Journal of Selected Topics in Applied Earth Observations and Remote Sensing, 2018 (available online as early access). [link](https://ieeexplore.ieee.org/document/8332974/)

A. Ley, O. D'Hondt and O. Hellwich.  
**Regularization and Completion of Tomosar Point Clouds in a Projected Height Map Domain.**  
IGARSS 2017: 5854-5857 [link](https://ieeexplore.ieee.org/document/8128340/)

### Machine learning for image classification

Here, we focus on developing machine learning methods to perform a pixel-based semantic labelling of TomoSAR image stacks. It is well known that under different incidence angles, backscattering properties of natural and man-made targets vary. Moreover,  TomoSAR contains  phase information related to the position of scatterers in the 3D space. Therefore, we exploit these information to design relevant feature allowing a classification of the different types of objects present in a scene according to semantic categories such as 'forest', 'building', 'crop', 'water', 'road' and so on.  

![](./fig_ML.png){width=512px}

#### Related publications

O. D'Hondt, R. Haensch, and O. Hellwich.  
**Supervised Classification from TomoSAR Data.**  
EUSAR 2018 Aachen, Germany,June 2018. (accepted), 2018.

O. D'Hondt, R. Haensch, and O. Hellwich.  
**Feature Design for Classification from TomoSAR Data.**  
IGARSS 2018 Valencia, Spain, July 2018. (accepted), 2018.


### Building extraction from 3D point clouds

This sub-topic consists in exploiting both image radiometry and 3D point geometry to detect and classify building parts. First, a geometric primitive extraction process exploiting image and 3D information allows us to separate planar patches. These patches are then classified by geometric rules to identify building parts such as facades and roofs. Thanks to a parametric approach a de-noised 3D representation of buildings is possible.

![](./fig_isprs.png)


#### Related publications

O. D'Hondt, S. Guillaso and O. Hellwich.  
**Towards a Semantic Interpretation of Urban Areas with Airborne Synthetic Aperture Radar Tomography.**  
ISPRS Annals of Photogrammetry, Remote Sensing and Spatial Information Sciences, 2016, III-7, 235-242 
[link](http://www.isprs-ann-photogramm-remote-sens-spatial-inf-sci.net/III-7/235/2016/isprs-annals-III-7-235-2016.pdf)

O. D'Hondt, S. Guillaso and O. Hellwich.  
**Geometric primitive extraction for 3D reconstruction of urban areas from tomographic SAR data.**  
Proceedings of JURSE 2013 - Joint Urban Remote Sensing Event 2013, Sao Paulo, Brazil 
[link](http://ieeexplore.ieee.org/document/6550701/)

O. D'Hondt, S. Guillaso and O. Hellwich.  
**Automatic extraction of geometric structures for 3D reconstruction from Tomographic SAR data.**  
Proceedings of IGARSS'12 Conference, 2012, Munich, Germany 
[link](http://ieeexplore.ieee.org/document/6350507/)