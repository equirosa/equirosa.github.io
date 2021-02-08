#!/bin/sh

hugo --cleanDestinationDir && scp -r public/ website@eduardoquiros.xyz:site/
