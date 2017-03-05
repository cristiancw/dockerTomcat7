# Add lines - start here

# Java Home
export JAVA_HOME=/usr/java/jdk1.7.0_80

# Java general options
JAVA_OPTS="$JAVA_OPTS -Duser.region=BR"
JAVA_OPTS="$JAVA_OPTS -Duser.language=pt"
JAVA_OPTS="$JAVA_OPTS -Xms1024m"
JAVA_OPTS="$JAVA_OPTS -Xmx1024m"
JAVA_OPTS="$JAVA_OPTS -XX:MaxPermSize=512m"
JAVA_OPTS="$JAVA_OPTS -XX:+UseG1GC"

# Java reports options
JAVA_OPTS="$JAVA_OPTS -Djava.awt.headless=true"

# Java Philips options
JAVA_OPTS="$JAVA_OPTS -Dphilips.location.Tasy=http://localhost:8080/Tasy"
JAVA_OPTS="$JAVA_OPTS -Dphilips.location.WhebServidor=http://localhost:8080/WhebServidor"
JAVA_OPTS="$JAVA_OPTS -Dphilips.location.WhebRepositorio=http://localhost:8080/WhebRepositorio"
JAVA_OPTS="$JAVA_OPTS -Dphilips.location.TasyReports=http://localhost:8080/TasyReports"
JAVA_OPTS="$JAVA_OPTS -Dphilips.report.remote=true"

# Jmx conection
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.authenticate=false"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.ssl=false"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.port=8686"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.rmi.port=8686"
JAVA_OPTS="$JAVA_OPTS -Djava.rmi.server.hostname=127.0.0.1"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.local.only=false"

# Java remote debug
JAVA_OPTS="$JAVA_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,server=y,address=12999,suspend=n"

export JAVA_OPTS
# Add lines - end here