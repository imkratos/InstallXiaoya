FROM xiaoyaliu/alist:latest

WORKDIR /data/

RUN echo $token > token.txt \
  && echo $token
  
