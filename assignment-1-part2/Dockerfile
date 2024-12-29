FROM ubuntu:22.04

RUN apt update

RUN mkdir -p /Data/Ninjas/Mohan /Data/Ninjas/Uma /Data/Ninjas/Shikha /Data/Ninjas/Mayank

RUN groupadd ninjas
RUN useradd -m -g ninjas Mohan
RUN useradd -m -g ninjas Uma
RUN useradd -m -g ninjas Shikha
RUN useradd -m -g ninjas Mayank

RUN chown -R Mohan:ninjas /Data/Ninjas/Mohan && \
    chmod -R 750 /Data/Ninjas/Mohan && \
    chown -R Uma:ninjas /Data/Ninjas/Uma && \
    chmod -R 750 /Data/Ninjas/Uma && \
    chown -R Shikha:ninjas /Data/Ninjas/Shikha && \
    chmod -R 750 /Data/Ninjas/Shikha && \
    chown -R Mayank:ninjas /Data/Ninjas/Mayank && \
    chmod -R 750 /Data/Ninjas/Mayank
    
USER Mohan

WORKDIR /Data


