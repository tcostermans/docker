FROM java:6

RUN  curl -O http://downloads.jboss.org/hornetq/hornetq-2.2.5.Final.zip
RUN unzip -d /opt/ hornetq-2.2.5.Final.zip
#RUN wget  -O conf.zip http://nexus.tools.be01.uni:8080/nexus/service/local/artifact/maven/redirect\?r\=snapshots\&g\=com.unifiedpost\&a\=up-hornetq-conf\&v\=LATEST\&e\=zip
COPY conf.zip . 
RUN unzip -o -d /opt/hornetq-2.2.5.Final conf.zip
COPY run_patched.sh /opt/hornetq-2.2.5.Final/bin/run.sh

EXPOSE 5445 5455

WORKDIR /opt/hornetq-2.2.5.Final/bin
RUN chmod +x run.sh
CMD ["./run.sh","../config/unifiedpost"]