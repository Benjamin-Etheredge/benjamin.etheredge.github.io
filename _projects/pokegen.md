---
layout: project
title: 'Pokemon Generation'
caption: Generating Pokemon with different Machine Learning Methods
description: >
  This project was for exploring generative algorithms along with MLOps technologies.
date: '08-01-2021'
# image: 
#   path: /assets/img/projects/hydejack-site.jpg
#   srcset: 
#     1920w: /assets/img/projects/hydejack-site.jpg
#     960w:  /assets/img/projects/hydejack-site@0,5x.jpg
#     480w:  /assets/img/projects/hydejack-site@0,25x.jpg
links:
  - title: Github
    url: https://github.com/Etheredge-Works/pokegen
  # - title: Weights & Biases
  #   url: https://hydejack.com/
  - title: Demo Reports
    url: https://github.com/Etheredge-Works/pokegen/pull/56
sitemap: false
---

# Pokegen

# WRITTING IN PROGRESS

## TLDR
I built vanilla dense auto encoders (AEs), vanilla convolutional AEs, variational dense AEs, and convolutional
variational for the Pokemon Generation. 


## Introduction
This project was kickstarted thanks to some inspiration during a beach trip.

I had 3 goals:
- To explore generative algorithms
- To explore MLOps technologies
- Learn pytorch

## Goal 1: Explore Generative Algorithms
I did okay here. I explored regular auto encoders and variational. 
I never did get great results out of them. 

## Future Work
The most obvious thing to mention here is to move on to generative adversarial networks. I got too into auto encoders as
they are one of my favorite network architectures. It was too fun to explore them. 

Switch to using pytroch lightning. This project was started before I became familiar with the lightning framework. 
Using it would make the code more scalable, readable, and maintainable. 

Build in the functionality for runners to spin up AWS resources. The MLOps tooling I chose to use supports dynamically
spinning up AWS resources for Github job runner jobs. 
I tend to have an aversion to using cloud GPU resources due to the high cost and possiblity of huge bills if left up.
The MLOps framework supports starting and stopping resrouces, but my code could still run unexpectedly long. 
I also much prefer running on my own hardware. 