@echo off
F:
cd wiremock
java -jar wiremock-standalone-2.1.10.jar --port 8080
@echo server %date% %time% >>version