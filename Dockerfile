FROM registry.redhat.io/rhel7:latest

RUN adduser grakover && mkdir /home/grakover/siege/
COPY siege.tar.gz /home/grakover/siege/
RUN cd /home/grakover/siege && tar -zxvf /home/grakover/siege/siege.tar.gz 
RUN chown -R grakover:grakover /home/grakover/siege/
