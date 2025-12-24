# Node.js 18 버전 사용
FROM node:18-slim

# 컨테이너 내부 작업 디렉토리 설정
WORKDIR /app

# package.json 파일들을 먼저 복사
COPY package*.json ./

# npm install로 필요한 패키지들 설치
RUN npm install --production

# 나머지 소스 코드 복사
COPY . .

# Cloud Run은 8080 포트를 사용
EXPOSE 8080

# 앱 실행 명령어
CMD ["npm", "start"]