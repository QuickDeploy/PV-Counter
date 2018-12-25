FROM newnius/php:7.3

MAINTAINER Newnius <docker@newnius.com>

RUN curl -L https://github.com/newnius/PV-Counter/archive/1.1.0.tar.gz > /tmp/pv-counter.tar.gz \
	&& tar -C /tmp -xzvf /tmp/pv-counter.tar.gz \
	&& mv /tmp/PV-Counter-1.1.0/.htaccess /var/www/html \
	&& mv /tmp/PV-Counter-1.1.0/* /var/www/html \
	&& rm -rf /tmp/*


ADD config/config.js /var/www/html/static/

ADD config/config.inc.php /var/www/html/

ADD bootstrap.sh /etc/

CMD /etc/bootstrap.sh