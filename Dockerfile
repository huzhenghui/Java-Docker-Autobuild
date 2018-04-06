FROM huzhenghui/sdkman

LABEL maintainer="hu@daonao.com"

RUN bash -c 'source /root/.sdkman/bin/sdkman-init.sh; sdk version; echo -e "\n----------" $? "----------\n"' && \
    bash -c 'source /root/.sdkman/bin/sdkman-init.sh; echo y | sdk install java; echo -e "\n----------" $? "----------\n"' && \
    bash -c 'source /root/.sdkman/bin/sdkman-init.sh; export' && \
    bash -c 'source /root/.sdkman/bin/sdkman-init.sh; ${JAVA_HOME}/bin/java --version'
