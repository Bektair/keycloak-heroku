FROM jboss/keycloak:latest

ADD zombieTheme /opt/jboss/keycloak/themes/zombieTheme

COPY docker-entrypoint.sh /opt/jboss/tools

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

