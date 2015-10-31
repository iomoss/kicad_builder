# Kicad_builder

Repository for building `kicad-4.*` for debian:jessie.

## Running the image
```bash
$ export OUTPUT_DIR=/home/skeen/kicad
$ docker run -v $OUTPUT_DIR:/srv/ -it iomossautomata/kicad_builder:amd64
```

This will;

2. Run the docker image, and start compiling the kicad source code.
3. The kicad deb files will be output to `$OUTPUT_DIR`

*Warning: Compiling of kicad is multithreaded, and can make the computer irresponsible.*

## Image details

*Note: The images are all generated from a meta Dockerfile*

This image is offered for multiple architectures;

 * **i386**: `iomossautomata/kicad_builder:i386`
 * **amd64**: `iomossautomata/kicad_builder:amd64`
 * **armv7**: `iomossautomata/kicad_builder:armv7`
