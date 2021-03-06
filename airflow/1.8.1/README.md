### Step 1: Build image of airflow
1. Go to directory that has Dockerfile.

2. Execute below command to build image.
```
docker build -t my/airflow:1.8.1 -f Dockerfile.airflow .
```

3. Confirm the created image.
```
docker images
```
```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
my/airflow          1.8.1               035cc6521841        14 seconds ago      2.19GB
```

### Step 2: Create container of airflow & run
1. Execute below command to create container & start.
```
./start-airflow.sh
```

2. Access to airflow web console.
```
http://localhost:8080
-> it may take 1 min to be able to access.
```

3. Stop the container.
```
./stop-airflow.sh
```

### Option1: Remove the created container
```
docker rm my-airflow
```

### Option2: Remove the created image
```
docker rmi my/airflow:1.8.1
```
