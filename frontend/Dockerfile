FROM nginx:alpine

RUN apk add --update --no-cache nodejs npm git


#config nginx

RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir /nodesrc
RUN git clone "https://github.com/Vitond/gttournament.git" /nodesrc
WORKDIR /nodesrc
RUN npm install
RUN npm run build
RUN cp -a /nodesrc/build/. /usr/share/nginx/html

EXPOSE 80