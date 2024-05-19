This is how to compile for the H700 series

Follow the instructions for compiling the batocera system on their main page.

To compile for the RG35XX H series need to do
  make h700-build

Before this need to patch some files, which have been done in this github.
    :- package\batocera\emulators\retroarch\libretro\libretro-parallel-n64\libretro-parallel-n64.mk  :- Chnages to allow using teh libmali correctly


If need to add new python packages then modify the batocera-board.common file /configs and set the build name opf teh package to y
        e.g. To add the python pip package add the line BR2_PACKAGE_PYTHON_PIP=y to the # python choices list in the file above.

Will also need to add a new folder to package/batocera/{relevant sub dir} for teh new package with a config.in and packagename.mk file. See other folders for examples of the chnages to make (e.g. see python-simplepyble in the package\batocera\libraries\python-simplepyble folder.)

I assume you can add any system specific ones to the .board file for the actual platform trying to build for.
