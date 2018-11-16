FROM continuumio/anaconda3

RUN conda install -y h5py imageio jupyter matplotlib numpy tqdm tensorflow
RUN mkdir /opt/notebooks

EXPOSE 8888
CMD ["jupyter", "notebook", "--notebook-dir=/opt/notebooks",  "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
