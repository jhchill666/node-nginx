#
# @author: James Hill
# @description: Nginx webserver with NodeJS bundled
#

FROM nginx
MAINTAINER James Hill <jhill@amelco.co.uk>

# Install Node.js
RUN \
  apt-get update && \
  apt-get install -y curl && \
  curl -sL https://deb.nodesource.com/setup | bash - && \
  apt-get install -y nodejs && \
  apt-get purge -y curl apt-transport-https && \
  apt-get autoremove -y && \
  apt-get clean all
