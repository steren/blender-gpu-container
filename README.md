# Blender with GPU on Cloud Run


```
# Build
$ docker build . -t blender

# Run locally and render a scene
$ docker run -v ./examples:/in -v ./output:/out --gpus all blender --background /in/basic.blend --render-output /out/render_ --engine CYCLES --render-frame 1
```