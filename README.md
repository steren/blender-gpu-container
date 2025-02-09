# Blender container with GPU support

A Docker container to run Blender with GPU support.

## Build
```bash
$ docker build . -t blender
```

## Run locally 

### Confirm GPU support
```bash
$ docker run --gpus all --entrypoint nvidia-smi blender
```

### Check version
```bash
$ docker run --gpus all blender --version
```

### Render a scene

See CLI options [here](https://docs.blender.org/manual/en/4.2/advanced/command_line/index.html)

```bash
$ docker run -v ./examples:/in -v ./output:/out --gpus all blender --background /in/basic.blend --render-output /out/render_ --engine CYCLES --render-frame 1
```