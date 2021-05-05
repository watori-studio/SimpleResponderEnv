FROM python:3.8

ARG api_root_dir=/app/

# ADD requirements.txt $project_dir
ADD app/root.py $api_root_dir
WORKDIR $api_root_dir

RUN pip install responder && \
    pip install starlette==0.14.2
