# specify the image with sql server
FROM microsoft/mssql-server-linux:latest-2017
 
# accept the EULA
ENV ACCEPT_EULA Y
ENV MSSQL_PID Developer

# Copy backup file to container folder
RUN chmod +x /z
RUN mkdir /var/opt/mssql/backup
WORKDIR /var/opt/mssql/backup
COPY /z/dbPricing/dbPricing_20180329.bak .
