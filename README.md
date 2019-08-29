# gunicorn-simple-docker
basic gunicorn docker usage

To run image:

docker run -e GUNICORN_WORKERS=4 -e GUNICORN_ACCESSLOG=- -p 8000:8000 <imagetag>/<imagename>
