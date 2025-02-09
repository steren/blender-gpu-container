# Blender container with GPU support

A Docker container to run Blender with GPU support.

## Run locally 

### Confirm GPU support

Look for your GPU in the output:

```bash
$ docker run --gpus all --entrypoint nvidia-smi steren/blender
```

### Check exact Blender version
```bash
$ docker run --gpus all steren/blender --version
```

### Render a scene

See CLI options [here](https://docs.blender.org/manual/en/4.2/advanced/command_line/index.html)

```bash
$ docker run -v ./examples:/in -v ./output:/out --gpus all steren/blender --background /in/basic.blend --render-output /out/render_ --engine CYCLES --render-frame 1
```

But it seems like the abose uses CPU. Try adding `-- --cycles-device CUDA` to the command line.

## Build
```bash
$ docker build . -t steren/blender
```