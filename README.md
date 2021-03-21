# Docker Files
    
# Ubuntu:
    docker build -t ubuntu:20.04 . && docker run -itd --name ubuntu ubuntu:20.04 tail -f /dev/null;
# Jenkins:
    docker build -t ubuntu:20.04 . && docker run -itd --name jenkins -p 8080:8080 ubuntu:20.04 tail -f /dev/null;