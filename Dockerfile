FROM java:8u66-jre
MAINTAINER Ahmed Soliman <ahmed@toptal.com>
ENV SMARTFOX_VERSION 2_9_0_64
WORKDIR /var
RUN wget http://www.smartfoxserver.com/downloads/sfs2x/SFS2X_unix_${SMARTFOX_VERSION}.tar.gz && \
    tar xf SFS2X_unix_${SMARTFOX_VERSION}.tar.gz && \
    rm SFS2X_unix_${SMARTFOX_VERSION}.tar.gz && \
    rm -rf SmartFoxServer_2X/jre && \
    cp SmartFoxServer_2X/SFS2X/lib/jetty/modules/npn/npn-1.7.0_45.mod SmartFoxServer_2X/SFS2X/lib/jetty/modules/npn/npn-1.8.0_66-internal.mod
WORKDIR /var/SmartFoxServer_2X/SFS2X
ADD bootup.sh bootup.sh
VOLUME ["/var/SmartFoxServer_2X/SFS2X/logs"]
EXPOSE 8080 9933
ENTRYPOINT ./bootup.sh
