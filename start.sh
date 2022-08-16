#!/bin/sh

BASE_DIR="/srv/laravel"

cd ${BASE_DIR}

# if DB_CONNECTION empty, create SQLite database file
if [[ -z $DB_CONNECTION ]] ; then \
    # pastikan file database sudah ada
    mkdir -p "${BASE_DIR}/database/storage"

    SQLITE_DB_DATABASE="${DB_DATABASE:-storage/database.sqlite}"
    touch "${BASE_DIR}/database/${SQLITE_DB_DATABASE}"
fi

# set default value for LARAVEL_SERVE_PORT
# ref: https://stackoverflow.com/a/48829326
LARAVEL_SERVE_PORT="${PORT:-8000}"

#php -S 0.0.0.0:8000
#php artisan migrate:fresh --seed --force

#php artisan serve --host 0.0.0.0 --port ${LARAVEL_SERVE_PORT}
php artisan octane:start --server=roadrunner --host 0.0.0.0 --port ${LARAVEL_SERVE_PORT} --workers=${ROADRUNNER_WORKERS} --max-requests=${ROADRUNNER_MAX_REQUESTS} ; \
