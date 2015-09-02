FROM jhchill666/nginx

MAINTAINER James Hill <jhill@amelco.co.uk>

# Install Node.js
RUN apt-get update && \
	apt-get install -y nginx git wget tar gzip build-essential && \
	apt-get -q -y install curl nodejs npm && \
	apt-get clean && \
	rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*