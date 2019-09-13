FROM continuumio/miniconda3
EXPOSE 8888
ADD environment.yml /
RUN conda update -n base conda -y && conda env update
ENTRYPOINT git clone https://github.com/AmirrezaSlt/social_networks.git
WORKDIR /social_networks/main
CMD jupyter lab --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='amirreza'