FROM registry.redhat.io/rhel7:latest

RUN adduser grakover
COPY siege.tar.gz /home/grakover/
RUN cd /home/grakover/ && tar -zxvf /home/grakover/siege.tar.gz 
RUN chown -R grakover:grakover /home/grakover/ && chmod -R 777 /home/grakover/
