FROM java:8u111-jre-alpine
VOLUME /tmp

ADD build/libs/config-server-*.jar /work/app.jar
ADD run.sh /

ENTRYPOINT ["/run.sh"]
