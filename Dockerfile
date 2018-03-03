FROM huzhenghui/sdkman

LABEL maintainer="hu@daonao.com"

RUN bash -c 'source /root/.sdkman/bin/sdkman-init.sh; sdk version; echo -e "\n----------" $? "----------\n"' && \
    bash -c 'source /root/.sdkman/bin/sdkman-init.sh; echo y | sdk install java 9.0.4-oracle; echo -e "\n----------" $? "----------\n"' && \
    bash -c 'export'
