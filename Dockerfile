FROM ubuntu:latest
LABEL authors="player7571"

ENTRYPOINT ["top", "-b"]

# 베이스 이미지 선택
FROM openjdk:17-jdk-slim

# 실행 파일 ARG 설정
ARG JAR_FILE=*.jar

# 컨테이너 내부로 JAR 복사
COPY ${JAR_FILE} app.jar

# 실행 명령어
ENTRYPOINT ["java", "-jar", "/app.jar"]
