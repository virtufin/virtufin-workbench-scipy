export BASEDIR=`pwd -P`
export JPY_COOKIE_SECRET=`openssl rand -hex 1024`
export CONFIGPROXY_AUTH_TOKEN=`openssl rand -hex 32`
export KAFKA_ADVERTISED_HOST_NAME=kafka
#export HOSTNAME_COMMAND="resolveip -s `hostname`"
export KAFKA_ADVERTISED_PORT=9092
export ADVERTISED_PORT=9092
export KAFKA_ZOOKEEPER_CONNECT=zk:2181
