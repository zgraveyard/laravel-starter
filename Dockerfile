FROM zaherg/php-swoole:7.2
ARG BUILD_DATE
ARG VCS_REF
ARG IMAGE_NAME

LABEL Maintainer="Zaher Ghaibeh <z@zah.me>" \
      Description="Lightweight PHP 7.2 container based on Alpine Linux with Swoole installed and enabled by default." \
      org.label-schema.name=$IMAGE_NAME \
      org.label-schema.description="Lightweight PHP 7.2 container based on Alpine Linux with Swoole installed and enabled by default." \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/linuxjuggler/lumen-starter.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0"

ENV APP_NAME ${APP_NAME:-laravel}
ENV APP_ENV ${APP_ENV:-production}
ENV APP_KEY ${APP_KEY}
ENV APP_DEBUG ${APP_DEBUG:-false}
ENV APP_URL ${APP_URL:-"http://localhost"}
ENV LOG_CHANNEL ${LOG_CHANNEL:-stack}
ENV APP_TIMEZONE ${APP_TIMEZONE:-UTC}
ENV DB_CONNECTION ${DB_CONNECTION:-mysql}
ENV DB_HOST ${DB_HOST:-database}
ENV DB_PORT ${DB_PORT:-3306}
ENV DB_DATABASE ${DB_DATABASE:-docker}
ENV DB_USERNAME ${DB_USERNAME:-docker}
ENV DB_PASSWORD ${DB_PASSWORD:-secret}
ENV DB_COLLATION ${DB_COLLATION:-utf8mb4_unicode_ci}
ENV DB_CHARSET ${DB_CHARSET:-utf8mb4}
ENV BROADCAST_DRIVER ${BROADCAST_DRIVER:-log}
ENV CACHE_DRIVER ${CACHE_DRIVER:-file}
ENV QUEUE_CONNECTION ${QUEUE_CONNECTION:-sync}
ENV SESSION_DRIVER ${SESSION_DRIVER:-file}
ENV SESSION_LIFETIME ${SESSION_LIFETIME:-120}
ENV REDIS_HOST ${REDIS_HOST:-"127.0.0.1"}
ENV REDIS_PORT ${REDIS_PORT:-6379}
ENV REDIS_PASSWORD ${REDIS_PASSWORD:-null}
ENV MAIL_DRIVER ${MAIL_DRIVER:-smtp}
ENV MAIL_HOST ${MAIL_DRIVER:-smtp.mailtrap.io}
ENV MAIL_PORT ${MAIL_PORT:-2525}
ENV MAIL_USERNAME ${MAIL_USERNAME:-null}
ENV MAIL_PASSWORD ${MAIL_PASSWORD:-null}
ENV MAIL_ENCRYPTION ${MAIL_ENCRYPTION:-null}
ENV PUSHER_APP_ID ${PUSHER_APP_ID}
ENV PUSHER_APP_KEY ${PUSHER_APP_KEY}
ENV PUSHER_APP_SECRET ${PUSHER_APP_SECRET}
ENV PUSHER_APP_CLUSTER ${PUSHER_APP_CLUSTER}
ENV MIX_PUSHER_APP_KEY ${PUSHER_APP_KEY:-""}
ENV MIX_PUSHER_APP_CLUSTER ${PUSHER_APP_CLUSTER:-""}
ENV SWOOLE_HTTP_PORT ${SWOOLE_HTTP_PORT:-80}
ENV SWOOLE_HTTP_HOST ${SWOOLE_HTTP_HOST:-"0.0.0.0"}






USER root

ADD ./ /var/www

RUN composer global require hirak/prestissimo && \
	composer install --no-progress --no-suggest --prefer-dist --optimize-autoloader

CMD ["php", "artisan","swoole:http","start"]
