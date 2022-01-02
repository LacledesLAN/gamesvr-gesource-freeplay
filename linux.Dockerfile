# escape=`
FROM lacledeslan/gamesvr-gesource

HEALTHCHECK NONE

ARG BUILDNODE=unspecified
ARG SOURCE_COMMIT=unspecified

LABEL com.lacledeslan.build-node=$BUILDNODE `
      org.label-schema.schema-version="1.0" `
      org.label-schema.url="https://github.com/LacledesLAN/README.1ST" `
      org.label-schema.vcs-ref=$SOURCE_COMMIT `
      org.label-schema.vendor="Laclede's LAN" `
      org.label-schema.description="LL GoldenEye Source Dedicated Server" `
      org.label-schema.vcs-url="https://github.com/LacledesLAN/gamesvr-gesource-freeplay"


#COPY --chown=GESource:root ./sourcemod.linux /app/gesource/

#COPY --chown=GESource:root ./sourcemod-configs /app/gesource/

COPY --chown=GESource:root ./dist /app/

COPY --chown=GESource:root ./ll-tests /app/ll-tests

# UPDATE USERNAME & ensure permissions
RUN mkdir -p /app/gesource/addons/sourcemod/logs/ &&`
    chown GESource:root -R /app/gesource/addons/sourcemod/logs &&`
    chmod +x /app/ll-tests/*.sh &&`
    usermod -l GESourceFreeplay GESource

RUN cd /app; echo 232370 > ./steam_appid.txt

WORKDIR /app

USER GESourceFreeplay

CMD ["/bin/bash"]

ONBUILD USER root
