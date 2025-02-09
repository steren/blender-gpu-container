# cloud-run-blender-gpu


```
# build
$ docker build . -t blender

# Render a scene
$ docker run -v ./examples:/in -v ./output:/out --gpus all blender --background /in/basic.blend --render-output /out/render_ --engine CYCLES --render-frame 1
```