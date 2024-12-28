#!/bin/sh

# Collect static files
echo "Collecting static files"
python manage.py collectstatic --noinput

# Make database migrations
echo "Applying database migrations"
python manage.py makemigrations
python manage.py migrate

# Execute the provided command
exec "$@"