# slim is the smallest possible version
# always a good idea for prod
# less vulnerable, smaller,...

# when making a container only use things you'd use in production
# no dev tools and so on
FROM python:3.13-slim

WORKDIR /app

COPY taxi_rides_outlier_detection /app/taxi_rides_outlier_detection
COPY pyproject.toml /app

RUN pip install .

ENTRYPOINT [ "detect-taxi-ride-outliers" ]