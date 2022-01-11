---
layout: project
title: 'Kedro Exploration'
caption: Generating Pokemon with different Machine Learning Methods
description: >
  This project was for exploring generative algorithms along with MLOps technologies.
date: '08-01-2021'
image: 
  path: /assets/img/projects/kedro-supervised/kedro-pipeline-default-short.svg
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

# WRITING STILL IN PROGRESS

# Supervised Kedro

## Inspiration

This project was a way for me to add something interesting to a homework assignment.
The assignment was to evaluate various supervised machine learning algorithms.
While the algorithms to evaluate were given, nothing else was (e.g., data, metrics, graphs, etc.).
Yes, it was that vague of an assignment. 

If you're like me, vague assignments can be rough. 
I didn't know what datasets I wanted to use. 
I didn't know what charts I wanted to use.
I was also already familiar with various ML libraries, so I wasn't going to learn much there.


So what did I do? Add complexity to make it more interesting. 
I vaguely remember that being a *productivity hack* to generate self motivation.

I also figured it would be good to learn a new MLOps tool for pipeline along with the hope that it could help with my indecisiveness. Effective data pipelines should allow quick and easy mix-and-matching of algorithms, datasets, and analysis. 


[Kedro](https://kedro.readthedocs.io/en/latest/) framework. It seemed like (and was)


##  Why Kedro

I had seen the [Kedro](https://kedro.readthedocs.io/en/latest/) framework come up in a few blog posts along with various other mentions of it. 
It seemed to hold some interesting ideas for how to build pipelines. 
So it was picked it as my new tool to learn.


<!--
## Basic Rundown On Kedro

[TODO]: maybe leave out. There's tons of tutorials out there that will do a better job of explaining this. } 
[TODO]: although I should write about it to get practice}

Data can be any file format, web link, or database connection.

Nodes are units of work that take in some input and produce some output (or produce nothing).

Pipelines are nodes glued together by their input and output.

The magic lies in the glue.
Kedro handles the passing of data from node to node for you.
You can define the intermediate data types or not.
If you don't define

Nodes are created from simple python functions.

Kedro unpac
-->


## How I used Kedro
I started with a simple Kedro start project. 
This worked great for my initial experimentation.
It allowed me to get a framework of a project up so I could quickly dive in.
I quickly outgrew it.


### Data Catalog
I initially started adding datasets to the Kedro data catalog for permanence of independent data (e.g., raw data, clean data, feature engineered data, SQL parameter databases, trained models, reports, etc.).
This worked great... at first. 

Some datasets could be loaded from a URL. 
Kedro supports creating a pandas dataset from a CSV from a URL link (which is awesome). 
I created source code for each dataset that needed extra logic. 
This was for things like the variants of MNIST and KDDCup99 datasets that I exported from scikit-learn.

While more handcrafted solutions were needed for getting the raw data, 
But as I added more datasets and algorithms, this quickly got out of hand. 
This is easy to see as the number of Kedro data items to keep track up was growing at at a rate of `n*m` where `n` is the number of intermediate datasets and `m` is the number of algorithms.
While this is a tiny amount in terms of processing times, it's a huge amount of work when hardcoding datasets in the data catalog.

So I was forced to move to a more flexible data catalog solution.
I had to dig around a bit, but eventually figured out how to dynamically create/register Kedro datasets.
This can be seen in `src.supervised.pipelines.algorithms.pipelines.py:create_datasets`




I then created pipelines for each dataset that outp

### Pipelines
Pipelines are where I did some wonky stuff. 



I stumbled across reusable pipelines a bit late in my Kedro journey, but they still didn't seem to be much better than what I had already done.
It might have made my code more reusable, but it's fine.

![kddcup99-decision-tree](/assets/img/projects/kedro-supervised/kedro-pipeline-kddcup99-decision-tree.svg)
Pictured above, short version of pipelines. You probably need to right-click open in another tab or download to see the details. 

![kddcup99](/assets/img/projects/kedro-supervised/kedro-pipeline-kddcup99-short.svg)
Short version of kddcup99 pipeline. You probably need to right-click open in another tab or download to see the details. 


![Short](/assets/img/projects/kedro-supervised/kedro-pipeline-default-short.svg)
Pictured above, short version of pipelines. You probably need to right-click open in another tab or download to see the details. 

![Long](/assets/img/projects/kedro-supervised/kedro-pipeline-default.svg)
Pictured above, version of pipelines with displayed names. You probably need to right-click open in another tab or download to see the details.

## My thoughts on Kedro
I liked how it handled connecting data between pipeline stages.
I **love** the abstraction of data storage.
I've tried on many occasions to have my code read and write from remote storage like NFS or S3.
But you run into so many problems with those approaches.
I've seen include pytorch/tensorflow data loading libraries slow to crawls when using the NFS protocol.
Or just having to deal with overhead of managing s3 connections in python.
The ability to just change out a few lines in a Kedro config file and now the data is stored in remote storage is amazing to me.

I love being able to just fire up a Jupyter Notebook to do some quick prototyping. 
I disliked having to use `kedro notebook` (or whatever the command is) to run a notebook.
Kedro *requires* this so that the correct information on the data catalog and stages are loaded into the notebook's python enivornment.
I managed to get it working without using the command by finding what the command was roughly doing.
Then I figured out I simply needed to add `%run -i  '../.ipython/profile_default/startup/00-kedro-init.py'` tot he first cell of the notebooks to load in the required information.
