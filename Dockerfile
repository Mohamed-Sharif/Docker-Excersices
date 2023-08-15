FROM nginx

ENV REPO beginner-html-site-styled
LABEL maintainer=Mohamed-Sharif
ARG useruser
RUN apt-get update && apt-get install -y unzip

WORKDIR /usr/share/nginx/html/
ADD https://github.com/mdn/$REPO/archive/gh-pages.zip ./code.zip
RUN unzip code.zip && mv ./$REPO-gh-pages/*  .

RUN rm -r code.zip $REPO-gh-pages/ 
CMD ["nginx", "-g", "daemon off;"]
