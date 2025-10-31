FROM hub.opensciencegrid.org/osg-jupyterhub/htc-minimal-notebook:4.1.0

USER $NB_UID:$NB_GID

RUN python3 -m pip install jupyter_app_launcher
RUN mkdir /opt/conda/share/jupyter/jupyter_app_launcher
COPY jp_app_launcher.yaml /opt/conda/share/jupyter/jupyter_app_launcher/jp_app_launcher.yaml
COPY folder.png /opt/conda/share/jupyter/jupyter_app_launcher/folder.png
