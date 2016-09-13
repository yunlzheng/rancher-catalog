#!/bin/sh

env

if [ "$IMPORTCERT" = "true" ]; then
	CATALINA_OPTS="-Djavax.net.ssl.trustStore=/opt/jdk/current/jre/lib/security/cacerts -Djavax.net.ssl.trustStorePassword=changeit $CATALINA_OPTS"
	KEYTOOL_PATH=$(readlink -f /usr/bin/java | sed "s|java$|keytool|")
	CACERTS_PATH=$(readlink -f /usr/bin/java | sed "s|bin/java$|/lib/security/cacerts|")
	cd ${IMPORTPATH}
	if [ ! -f /tmp/skipcert.conf ]; then
		for i in *
		do
			${KEYTOOL_PATH} -keystore ${CACERTS_PATH} -importcert -alias $i -file $i -storepass changeit -noprompt
		done
		touch /tmp/skipcert.conf
	fi
fi

/tmp/runArtifactory.sh
