# cloud-run-blender-gpu


```
# build
$ docker build . -t blender

# confirm you see a GPU
$ docker run --gpus all blender nvidia-smi

# Render a scene
$ docker run -v ./examples:/in -v ./output:/out --gpus all blender blender --background /in/basic.blend --render-output /out/render_ --engine CYCLES --render-frame 1
```