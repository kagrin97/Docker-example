FROM node:16-alpine 
#    노드버전16, alpine는 최소 리눅스를 말한다

WORKDIR /app
# app이라는 폴더안에 프로젝트에 필요한 모든 정보를 카피한다
# WORKDIR는 유닉스 명령어로 cd와 같다

COPY package.json package-lock.json ./


RUN npm ci
# npm install 보다 ci를 사용하면 그당시 사용했던 버전 그대로 가져온다

COPY index.js .
# 활용도가 많으면 밑에 위치 시킨다

ENTRYPOINT ["node", "index.js"]
# 사용할 프로그램, 파일