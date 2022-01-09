---
layout: project
title: 'Project Gloves'
caption: Exploring Self-Supervised Learning and MLOps
description: >
  This project was for exploring generative algorithms along with MLOps technologies.
date: '01-01-2021'
image: 
  path: /assets/img/projects/mittens_1.jpg
  srcset: 
    1920w: /assets/img/projects/mittens_1.jpg
    
    #960w:  /assets/img/projects/hydejack-site@0,5x.jpg
    #480w:  /assets/img/projects/hydejack-site@0,25x.jpg
links:
  - title: Github
    url: https://github.com/Benjamin-Etheredge/gloves
    
sitemap: false
---

# Project Gloves

# Links to Weights & Biases metrics
[]
The original goal of the project was simple: Create a facial recognition system
for my pets. It was named in ommage to one of my cats, Mr. Murder Mittens (pictured above).

But it ended up taking many twists and turns and has not yet reached its end goal. 


## Sidetracks
It ended up mostly servering as a testbed
for exploring various MLOps technologies.

Below are a few of the sidetracks.

### Weights & Biases
This was one of the first projects I tracked using Weights & Biases logging platform.
It worked great! And I eventually came back to it so I could share my project metrics publicly. 
See top of this page for links.

### MLFlow
I would eventually migrate metric and model logging to MLFlow due to the self hosting capabilities of MLFlow.
Through self hosting, I could store as many models as I wanted! 
I could also make use of MLFlow's model registry to control to flow of models to production.
WandB may have a similar feature to MLFlow Model Registry at this point, but I don't see a need for switching to anything else for this project.

While I still track metrics and models in MLFlow, it's metric tracking is mirrored in Weights & Biases.

I use MLFlow's model registy to pull models for demo sites that use them.


#### Kubeflow
This was one of the first projects I adapted for Kubeflow. This was at a rare point 
in time where the Kubeflow installation was still possible in one attempt.

See [here](/blog/2021-12-27-kubeflow/) for my experience with Kubeflow. **Spoiler alert**, it was not positive.

Since then, I have not been able to get a working version of Kubeflow 

## Future Work
I want to get the networks running on embeded hardward (like a jetson nano). 

I want to add some optimization steps to the project to trim down the network and optimize it for inference on a chosen embeded hardware platform (e.g., pruning, qunatizing, etc.).
This would also be a good chance to explore TensorRT.

I want the GUI's to not pull the models directly.
I want them to simply hit an API endpoint that hosts the models.
While I've built this numerous times, I didn't want to rebuild the GUI's just yet.



### Technologies Used
- Tensorflow / Keras
- Docker
- Kubeflow