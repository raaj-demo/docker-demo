FROM centos/nodejs-8-centos7

USER root
RUN mkdir app && \
    yum update -y && \
    yum install -y git

COPY . app/

RUN bash -l -c "cd app && \
                npm install"

EXPOSE 3000

WORKDIR app
CMD ["bash", "-l", "-c", "npm run start"]