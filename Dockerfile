FROM openjdk:17-jdk

WORKDIR /app

# 소스 코드 전체를 복사
COPY . .

# Gradle 빌드 실행
RUN ./gradlew build --no-daemon

# 빌드된 JAR 파일을 찾아 실행 (가장 최신 파일을 실행)
CMD ["sh", "-c", "java -jar $(ls build/libs/*.jar | head -n 1)"]