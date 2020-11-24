FROM jupyter/minimal-notebook:latest
USER root
RUN apt-get update && apt-get install -y \
	sudo \
	wget \
	nodejs
WORKDIR /home/jovyan/work
RUN npm install -g --unsafe-perm ijavascript
RUN ijsinstall --install=global
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]