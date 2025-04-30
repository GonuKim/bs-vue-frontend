# Node.js 이미지 기반으로 설정 (LTS 버전)
FROM node:lts

# 작업 디렉토리 생성
WORKDIR /usr/src/app

# 패키지 설치에 필요한 파일을 복사
COPY package*.json ./

# 의존성 설치
RUN npm install

# 소스 코드 복사
COPY . .

# 애플리케이션 빌드
RUN npm run build

# 8080 포트 열기
EXPOSE 8080

# 앱 실행
CMD ["npm", "run", "serve"]
