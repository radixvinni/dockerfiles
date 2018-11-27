FROM centos:7
RUN yum install -y mesa-libGL mesa-libGLU libXi libXmu bzip2 && \
	curl http://www.dhondt.de/cgx_2.14.bz2 -O && bunzip2 cgx_2.14.bz2 && chmod a+x cgx_2.14
CMD ["cgx_2.14", "input.frd"]

#docker build -t cgx .
#docker run --rm -it -e DISPLAY=172.17.0.1:0 --name dev --mount type=bind,source="yourfile.frd",target=/input.frd cgx
