FROM	lfkeitel/tacacs_plus

ENV	TZ=UTC

RUN	ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
	echo $TZ > /etc/timezone

RUN	apt-get update && \
	apt-get -y install vim-tiny openssl \
	tzdata && dpkg-reconfigure --frontend noninteractive tzdata
