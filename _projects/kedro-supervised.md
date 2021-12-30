---
layout: project
title: 'Kedro Exploration'
caption: Generating Pokemon with different Machine Learning Methods
description: >
  This project was for exploring generative algorithms along with MLOps technologies.
date: '08-01-2021'
image: 
  path: /assets/img/blog/kedro-supervised/kedro-pipeline-default-short.svg
  # srcset: 
  #   1920w: https://raw.githubusercontent.com/quantumblacklabs/kedro/develop/static/img/kedro_banner.png
  # path: https://raw.githubusercontent.com/quantumblacklabs/kedro/develop/static/img/kedro_banner.png
  # srcset: 
  #   1920w: https://raw.githubusercontent.com/quantumblacklabs/kedro/develop/static/img/kedro_banner.png
    # 960w:  /assets/img/projects/hydejack-site@0,5x.jpg
    # 480w:  /assets/img/projects/hydejack-site@0,25x.jpg
links:
  - title: Github
    url: https://github.com/Benjamin-Etheredge/kedro-exploration
  # - title: Weights & Biases
  #   url: https://hydejack.com/
  #- title: Demo Reports
    #url: https://github.com/Etheredge-Works/pokegen/pull/56
sitemap: false
---

# Kedro Exploration

# WRITTING STILL IN PROGRESS

## Inspiration
This project was a way for me to add something interesting to assignment to explore 
and write about supervised learning algorithms. I decided to go crazy using the 
[Kedro](https://kedro.readthedocs.io/en/latest/) framework. It seemed like (and was)
a great way to see what Kedro could do.

## Why Kedro?
It seemed to hold some interesting ideas for how to build pipelines. 
I liked how it handled connecting data between pipeline stages.
It does this by having the user define data, nodes, and pipelines. 

Data can be any file format, web link, or database connection. 

Nodes are units of work that take in some input and produce some output (or produce nothing).
Pipelines are nodes glued together by their input and output.

The magic lies in the glue. 
Kedro handles the passing of data from node to node for you.
You can define the intermediate data types or not. 
If you don't define
Nodes are created from simple python functions.
Kedro unpac

![kddcup99-decision-tree](/assets/img/blog/kedro-supervised/kedro-pipeline-kddcup99-decision-tree.svg)
Pictured above, short version of pipelines. You probably need to right-click open in another tab or download to see the details. 

![kddcup99](/assets/img/blog/kedro-supervised/kedro-pipeline-kddcup99-short.svg)
Short version of kddcup99 pipeline. You probably need to right-click open in another tab or download to see the details. 


![Short](/assets/img/blog/kedro-supervised/kedro-pipeline-default-short.svg)
Pictured above, short version of pipelines. You probably need to right-click open in another tab or download to see the details. 

![Long](/assets/img/blog/kedro-supervised/kedro-pipeline-default.svg)
Pictured above, version of pipelines with displayed names. You probably need to right-click open in another tab or download to see the details.

