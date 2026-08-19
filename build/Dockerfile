FROM hub.opensciencegrid.org/osg-jupyterhub/htc-minimal-notebook:4.1.0

USER $NB_UID:$NB_GID

RUN python3 -m pip install jupyter_app_launcher ipywidgets pyyaml
RUN mkdir /opt/conda/share/jupyter/jupyter_app_launcher
COPY jp_app_launcher.yaml /opt/conda/share/jupyter/jupyter_app_launcher/jp_app_launcher.yaml
COPY folder.svg /opt/conda/share/jupyter/jupyter_app_launcher/folder.svg
COPY rocket.svg /opt/conda/share/jupyter/jupyter_app_launcher/rocket.svg
COPY tutorials.svg /opt/conda/share/jupyter/jupyter_app_launcher/tutorials.svg
# JupyterLab default settings (skip the kernel-restart confirmation so the
# "Select a Tutorial" launcher card can restart+run its notebook without a prompt)
COPY overrides.json /opt/conda/share/jupyter/lab/settings/overrides.json
