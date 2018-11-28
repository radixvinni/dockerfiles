FROM debian:9
RUN  apt-get update \
  && apt-get install -y mesa-utils \
  && rm -rf /var/lib/apt/lists/*

CMD "glxgears"

#docker build -t softe/glxgears  -f glxgears.Dockerfile .
#docker run --rm -it -e DISPLAY=172.17.0.1:0 -e LIBGL_ALWAYS_INDIRECT=1 --name glxgears softe/glxgears
#DISPLAY=host.docker.internal:0