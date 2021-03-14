FROM tomsquest/docker-radicale

RUN python3 -m pip install git+https://github.com/Unrud/RadicaleInfCloud

COPY radicale_cloudron_ldap_auth /opt/radicale_cloudron_ldap_auth
RUN  cd /opt/radicale_cloudron_ldap_auth && python3 -m pip install .
