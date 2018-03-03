FROM huzhenghui/sdkman

LABEL maintainer="hu@daonao.com"

RUN bash -c 'source /root/.sdkman/bin/sdkman-init.sh; sdk; echo -e "\n----------" $? "----------\n"'
