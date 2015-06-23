# docker-mongodb

[![Build Status](https://travis-ci.org/rentabiliweb/docker-nodejs.svg?branch=master)](https://travis-ci.org/rentabiliweb/docker-nodejs)

#### Table of Contents

1. [Overview](#overview)
2. [Description](#description)
3. [Usage](#usage)
4. [Development](#development)

## Overview

Docker images and builders of Node.js.

## Description

Node.js is a  platform built on Chrome's JavaScript runtime  for easily building
fast, scalable network applications.  Node.js uses an event-driven, non-blocking
I/O model  that makes it  lightweight and efficient, perfect  for data-intensive
real-time applications that run across distributed devices.

https://nodejs.org/

Npm makes  it easy  for JavaScript developers  to share and  reuse code,  and it
makes it easy to update the code that you're sharing.

https://www.npmjs.com/

## Usage

### Run node

```bash
$ docker run \
  	 -it \
  	 --rm \
  	 -v /path/to/bind/from/host:/path/to/bind/in/container:rw \
	 rentabiliweb/nodejs \
	 bash -c 'cd /path/to/bind/in/container && node'
```

### Run npm

```bash
$ docker run \
  	 -it \
  	 --rm \
  	 -v /path/to/bind/from/host:/path/to/bind/in/container:rw \
	 rentabiliweb/nodejs \
	 bash -c 'cd /path/to/bind/in/container && npm'
```

## Development

Feel free to contribute on GitHub.
