FROM node:wheezy

WORKDIR /usr/src/app

RUN npm install -g bower grunt-cli && \
    echo '{ "allow_root": true }' > /root/.bowerrc

COPY entrypoint.sh /bin/entrypoint.sh

VOLUME ["/usr/src/app"]

EXPOSE 3000

ENTRYPOINT ["/bin/entrypoint.sh"]

CMD ["npm", "start"]
