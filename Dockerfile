FROM ttbb/base:erlang

ENV RABBITMQ_HOME /opt/sh/rabbitmq

ARG version=3.9.11

RUN wget -q https://github.com/rabbitmq/rabbitmq-server/releases/download/v$version/rabbitmq-server-generic-unix-$version.tar.xz && \
mkdir /opt/sh/rabbitmq && \
tar -xf rabbitmq-server-generic-unix-$version.tar.xz -C /opt/sh/rabbitmq --strip-components 1 && \
rm -rf /opt/sh/rabbitmq-server-generic-unix-$version.tar.xz && \
ln -s /opt/sh/rabbitmq/sbin/rabbitmq-defaults /usr/bin/rabbitmq-defaults && \
ln -s /opt/sh/rabbitmq/sbin/rabbitmq-diagnostics /usr/bin/rabbitmq-diagnostics && \
ln -s /opt/sh/rabbitmq/sbin/rabbitmq-env /usr/bin/rabbitmq-env && \
ln -s /opt/sh/rabbitmq/sbin/rabbitmq-plugins /usr/bin/rabbitmq-plugins && \
ln -s /opt/sh/rabbitmq/sbin/rabbitmq-queues /usr/bin/rabbitmq-queues && \
ln -s /opt/sh/rabbitmq/sbin/rabbitmq-server /usr/bin/rabbitmq-server && \
ln -s /opt/sh/rabbitmq/sbin/rabbitmq-upgrade /usr/bin/rabbitmq-upgrade && \
ln -s /opt/sh/rabbitmq/sbin/rabbitmqctl /usr/bin/rabbitmqctl

WORKDIR /opt/sh/rabbitmq