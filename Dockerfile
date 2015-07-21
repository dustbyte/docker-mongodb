# Copyright (c) 2015, Rentabiliweb Group
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.

# https://www.mongodb.org

FROM rentabiliweb/debian:wheezy
MAINTAINER Rentabiliweb Group

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      adduser

# get mongodb (https://www.mongodb.org/)
RUN curl -Ls https://docs.mongodb.org/10gen-gpg-key.asc | apt-key --keyring /etc/apt/trusted.gpg.d/mongodb-keyring.gpg add - && \
    echo 'deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.0 main' > /etc/apt/sources.list.d/mongodb.list && \
    apt-get update && \
    apt-get install -y \
      mongodb-org

# clean
RUN find /var/cache/apt -type f -delete && \
    find /var/lib/apt/lists -type f -delete

RUN mkdir -p /data/db

VOLUME ["/data/db"]

ENTRYPOINT ["/usr/bin/mongod"]

EXPOSE 27017
# EOF
