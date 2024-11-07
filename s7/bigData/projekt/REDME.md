1. Upload files to cluster
1. Make them executable `chmod +x *.py` 
1. Run mapreducer
```
mapred streaming -files mapper.py,reducer.py \
-mapper mapper.py \
-reducer reducer.py \
-input gs://pbd-24-kr-1330/project/input/datasource1 \
-output gs://pbd-24-kr-1330/project/input/mapreduce_output
```

cat gs://pbd-24-kr-1330/project/input/datasource1 | python mapper.py | sort -k1,1 | python reducer.py


cat input1 | python3 mapper.py | sort -k1,1 | python3 reducer.py

mapred streaming -files mapper.py,reducer.py -mapper mapper.py -reducer reducer.py -combiner reducer.py -input gs://pbd-24-kr-1330/project/input/datasource1 -output gs://pbd-24-kr-1330/project/input/mapreduce_output
