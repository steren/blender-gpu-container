FROM nvidia/cuda:12.8.0-base-ubuntu24.04

LABEL Title="Blender in Docker wiht GPU"

ENV DEBIAN_FRONTEND=noninteractive
ENV HW="GPU"

# Install dependencies
RUN apt-get update && apt-get install -y \
	blender

WORKDIR /

ENTRYPOINT ["blender"]