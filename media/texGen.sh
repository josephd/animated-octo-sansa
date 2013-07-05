#!/bin/bash
cd textures
java -cp ../utilities:../NeoTextureEdit_0.6.4/lib/NeoTextureEdit.jar NeoGen 256 `ls *.256.tgr`
java -cp ../utilities:../NeoTextureEdit_0.6.4/lib/NeoTextureEdit.jar NeoGen 1024 `ls *.1024.tgr`
mogrify -format tga *.png
rm -f *.png
