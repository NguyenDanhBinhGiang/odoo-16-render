# Default dockerfile from github
FROM ndbghdvn/base-env-odoo-16-e

SHELL ["/bin/bash", "-xo", "pipefail", "-c"]

RUN useradd -ms /bin/bash odoo
RUN mkdir /server &&  \
    chown -R odoo /server && \
    mkdir -p /etc/odoo-data &&  \
    chown -R odoo /etc/odoo-data && \
    mkdir -p /etc/odoo-config  &&  \
    chown -R odoo /etc/odoo-config

ADD https://api.github.com/repos/NguyenDanhBinhGiang/odoo-16-e/git/refs/heads/master version.json
RUN git clone https://github.com/NguyenDanhBinhGiang/odoo-16-e.git /server
WORKDIR /server
COPY . .

# Expose Odoo services
EXPOSE 10000 8071 8072

USER odoo

#ENTRYPOINT ["/entrypoint.sh"]
CMD ["./run_server.sh"]
