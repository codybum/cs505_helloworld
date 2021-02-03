# CS505 Hello World

This code repository provides:
- A simple Python Flask web server listening on port 9000
- Dockerfile to create a docker image
- Scripts to build and run the docker image

---
## Pull down the repository

#### 1. Clone the repo using git:
`git clone https://github.com/codybum/cs505_helloworld`
   
You will see the following output:

`Cloning into 'cs505_helloworld'...
remote: Enumerating objects: 31, done.
remote: Counting objects: 100% (31/31), done.
remote: Compressing objects: 100% (22/22), done.
remote: Total 31 (delta 9), reused 18 (delta 3), pack-reused 0
Unpacking objects: 100% (31/31), 4.23 KiB | 722.00 KiB/s, done.`

---
## Prepare and run the build scripts

#### 2. Access the project directory:
`cd cs505_helloworld`

#### 3. Make scripts executable:
`chmod +x *.sh`

#### 4. Build the container image:
`./build_docker.sh `

You will see the following output:

`Sending build context to Docker daemon  105.5kB
Step 1/7 : FROM python:latest
 ---> e32be9a6f71f
Step 2/7 : RUN pip install flask
 ---> Running in a4a4977b55a8
Collecting flask
  Downloading Flask-1.1.2-py2.py3-none-any.whl (94 kB)
...
Step 7/7 : ENTRYPOINT ["python"]
 ---> Running in 9ff41aa5180f
Removing intermediate container 9ff41aa5180f
 ---> bf5d30a56ddd
Successfully built bf5d30a56ddd
Successfully tagged cs505_helloworld:latest`

#### 5 (interactive). Launch the image into the foreground:
`./run_docker_interactive.sh`

You will see the following output:

 * Serving Flask app "main" (lazy loading)
 * Environment: production
   WARNING: This is a development server. Do not use it in a production deployment.
   Use a production WSGI server instead.
 * Debug mode: off
 * Running on http://0.0.0.0:9000/ (Press CTRL+C to quit)* Serving Flask app "main" (lazy loading)
 * Environment: production
   WARNING: This is a development server. Do not use it in a production deployment.
   Use a production WSGI server instead.
 * Debug mode: off
 * Running on http://0.0.0.0:9000/ (Press CTRL+C to quit)

#### 5 (background). Launch the image into the background:
`./run_docker_background.sh`

You will see a long string resembling the following:
`485b5f3f73ef09c674ceb4834c394c51dceb999a29b38b8d460d309eab7e5cba`

To kill this background container reference the container id, which in this case will be:
`docker kill 485b`