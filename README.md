# docker-mongodb ![License badge][license-img] [![Docker badge][docker-img]][docker-url]

## Overview

Docker image of MongoDB.

## Description

MongoDB is a  cross-platform document-oriented database.  Classified  as a NoSQL
database,  MongoDB  eschews  the  traditional  table-based  relational  database
structure in  favor of JSON-like  documents with dynamic schemas  (MongoDB calls
the  format  BSON),  making  the  integration   of  data  in  certain  types  of
applications easier and faster.

https://www.mongodb.org

## Usage

```bash
$ docker run \
  	 -d \
  	 -v /opt/mongo/data/db:/data/db \
	 -p 2222:27017 \
	 --name mongodb_srv1 \
	 rentabiliweb/mongodb \
	 --smallfiles
```

You can also create a "data volume container" and mounting the data from it :

```bash
$ docker run -v /data/db --name mongo_data rentabiliweb/wheezy
$ docker run -d -p 2222:27017 --volumes-from-mongo_data --name mongodb_srv1 rentabiliweb/mongodb --smallfiles
```

## Development

Feel free to contribute on GitHub.

```
    ╚⊙ ⊙╝
  ╚═(███)═╝
 ╚═(███)═╝
╚═(███)═╝
 ╚═(███)═╝
  ╚═(███)═╝
   ╚═(███)═╝
```

[license-img]: https://img.shields.io/badge/license-ISC-blue.svg "License"
[docker-img]: https://img.shields.io/docker/pulls/rentabiliweb/mongodb.svg "Docker"
[docker-url]: https://registry.hub.docker.com/u/rentabiliweb/mongodb "Docker"
