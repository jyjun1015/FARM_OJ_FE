FROM node:6.11-alpine

RUN apk add --no-cache nginx git python build-base
# 로컬로 캐시되지 않는 인덱스를 사용하여 패키지를 설치한다.

VOLUME [ "/FARM_OJ_FE", "/var/log/nginx/", "/data/avatar"]

EXPOSE 80

CMD ["/bin/sh", "/FARM_OJ_FE/deploy/run.sh"]
