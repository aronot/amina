FROM amazeeio/php:7.2-cli-drupal

COPY composer.* /app/
COPY scripts /app/scripts
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"
RUN composer install --no-dev 

COPY . /app

# Define where the Drupal Root is located
ENV WEBROOT=web
