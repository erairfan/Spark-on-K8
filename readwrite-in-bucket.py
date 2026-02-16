import os
from pyspark.sql import SparkSession
from pyspark.sql.functions import *
import time
spark=SparkSession.builder.getOrCreate()
time.sleep(8)
df=spark.read.parquet("path")
df.printSchema()

df.write.mode("overwrite").format("parquet").save("output_path")
