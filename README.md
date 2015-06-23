# docker-mongodb

[![Build Status](https://travis-ci.org/rentabiliweb/docker-mongodb.svg?branch=master)](https://travis-ci.org/rentabiliweb/docker-mongodb)

#### Table of Contents

1. [Overview](#overview)
2. [Description](#description)
3. [Usage](#usage)
4. [Development](#development)

## Overview

Docker images and for MongoDB.

## Description

MongoDB (from humongous) is a cross-platform document-oriented database. Classified as a NoSQL database, MongoDB eschews the traditional table-based relational database structure in favor of JSON-like documents with dynamic schemas (MongoDB calls the format BSON), making the integration of data in certain types of applications easier and faster.

https://www.mongodb.org


## Usage

### Run node

```bash
$ docker run \
  	 -itd \
  	 --rm \
  	 -v /opt/mongo/data/db:/data/db \
	 -p 2222:27017 \
	 --name mongodb_srv1 \
	 rentabiliweb/mongodb \
	 --smallfiles
	 
```

## Development

Feel free to contribute on GitHub.
