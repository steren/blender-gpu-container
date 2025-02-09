# cloud-run-blender-gpu


```
# build
$ docker build . -t blender

# confirm you see a GPU
$ docker run --gpus all blender nvidia-smi

# Render a scene
$ docker run -v ./examples:/in --gpus all blender blender --background /in/cube.blend -E CYCLES --render-output /out --render-frame 1
```