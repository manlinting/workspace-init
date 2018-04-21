#!/bin/sh

#docker pull ufoym/deepo:cpu

docker run -it  --ipc=host -v /home/lincolnlin:/home/lincolnlin ufoym/deepo:cpu bash
