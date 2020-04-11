FROM alpinelinux/docker-cli

# Install CLI tools
RUN apk --update add \
        git \
        ssh \
        openssh \
        git-crypt \
        python \
        py-pip \
        nodejs=12.15.0-r1 \
    && rm -rf /var/cache/apk/* \
    && pip install awscli \
    && mkdir ~/.aws

CMD sh
