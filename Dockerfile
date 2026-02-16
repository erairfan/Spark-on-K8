ARG SPARK_VERSION="v3.3.2"
FROM spark_base_image:$SPARK_VERSION
USER root
ADD readwrite-in-bucket.py /app/
RUN chown sparkusr:sparkusr /app/readwrite-in-bucket.py
RUN chmod 755 /app/readwrite-in-bucket.py
