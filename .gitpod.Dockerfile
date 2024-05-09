FROM gitpod/workspace-python-3.12:latest

RUN pip install --upgrade pip
RUN pip install ansible molecule "molecule-plugins[docker]" yamllint ansible-lint
