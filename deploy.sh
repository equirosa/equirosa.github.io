#!/bin/sh

hugo && scp -r public/ website@eduardoquiros.xyz:site/
