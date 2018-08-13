FROM python:3.6.5-slim
MAINTAINER Yufan Zheng <zhengyufan@wisers.com>
LABEL Description="Gunicorn Docker Example"

# Install vim, supervisord and git
RUN apt-get -y update
RUN apt-get -y install vim
RUN apt-get -y install supervisor
RUN apt-get -y install git

# Make Directory for app
RUN mkdir /home/gunicorn_docker
WORKDIR /home/gunicorn_docker
# Copy code inside
COPY . /home/gunicorn_docker

# Install requirements
RUN pip install -r /home/gunicorn_docker/requirements.txt

# Supervisor config (auto start)
ADD conf/supervisor.conf  /etc/supervisor/conf.d/

# Unblock port 5000 for the Flask app to run on
EXPOSE 5000

# execute the gunicorn app
CMD ["supervisord", "-n"]
