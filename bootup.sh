#!/bin/bash

set -x
JRE_FOLDER="../jre/bin"
JAVA_CMD="java"
if [ -d "$JRE_FOLDER" ]; then
    JAVA_CMD="../jre/bin/java"
    fi

    CPATH="./:lib/*:lib/jetty/lib/*:extensions/__lib__/*"
    ${JAVA_CMD} -cp ${CPATH} -Dfile.encoding=UTF-8 com.smartfoxserver.v2.Main $@
