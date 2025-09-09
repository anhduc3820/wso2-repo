FROM wso2/wso2is:7.1.0

COPY ./config/deployment.toml /home/wso2carbon/wso2is-7.1.0/repository/conf/deployment.toml
COPY ./postgres/postgresql-42.7.6.jar /home/wso2carbon/wso2is-7.1.0/repository/components/lib/postgresql-42.7.6.jar

CMD ["sh", "-c", "/home/wso2carbon/wso2is-7.1.0/bin/wso2server.sh"]