# Derived from official mysql image (our base image)
FROM mariadb

ENV MYSQL_DATABASE b2b

# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./database-scripts/ /docker-entrypoint-initdb.d/

EXPOSE 3306
