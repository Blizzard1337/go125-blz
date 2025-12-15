FROM golang:1.25-bookworm

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates git bash tzdata \
 && rm -rf /var/lib/apt/lists/*

RUN groupadd -g 1000 container \
 && useradd -m -d /home/container -s /bin/bash -u 1000 -g 1000 container

USER container
WORKDIR /mnt/server

CMD ["bash"]
