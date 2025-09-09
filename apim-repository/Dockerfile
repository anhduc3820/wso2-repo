FROM wso2/wso2am:4.4.0

COPY ./config/deployment.toml /home/wso2carbon/wso2am-4.4.0/repository/conf/deployment.toml
COPY ./cert/client-truststore.jks /home/wso2carbon/wso2am-4.4.0/repository/resources/security/client-truststore.jks
COPY ./postgres/postgresql-42.7.6.jar /home/wso2carbon/wso2am-4.4.0/repository/components/lib/postgresql-42.7.6.jar

CMD ["sh", "-c", "/home/wso2carbon/wso2am-4.4.0/bin/api-manager.sh"]