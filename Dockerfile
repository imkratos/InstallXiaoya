FROM xiaoyaliu/alist:latest

WORKDIR /etc/xiaoya/

RUN echo $token > token.txt \
  && echo $token
  
