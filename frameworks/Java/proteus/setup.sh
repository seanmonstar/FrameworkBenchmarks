#!/bin/bash

fw_depends postgresql mysql java8 maven
 

mvn -U clean package
cd target
java -Dlogback.configurationFile="conf/logback.xml" -Dconfig.file="conf/application.conf" -Xms2g -Xmx2g  -XX:+AggressiveOpts -server   -XX:-UseBiasedLocking -XX:+UseStringDeduplication -Djava.net.preferIPv4Stack=true -classpath "./proteus-techempower-1.0.0.jar:lib/*" io.sinistral.ExampleApplication 