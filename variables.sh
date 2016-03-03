export BASEDIR=`pwd -P`
export JPY_COOKIE_SECRET=`openssl rand -hex 1024`
export CONFIGPROXY_AUTH_TOKEN=`openssl rand -hex 32`
export KAFKA_ADVERTISED_HOST_NAME=`hostname`
