FROM openjdk:14-oraclelinux8
RUN groupadd -g 27 mysql && useradd -u 27 -g mysql mysql
RUN mkdir -p /opt/webapp
COPY user-registration-login /opt/webapp/user-registration-login
RUN ls -ltr /opt/webapp/
COPY runService.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN chown -R mysql:mysql /opt/webapp
WORKDIR /opt/webapp/user-registration-login
USER 27:27
ENTRYPOINT ["/entrypoint.sh"] 
