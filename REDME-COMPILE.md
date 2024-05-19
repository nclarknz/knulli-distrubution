<h3>This is how to compile for the H700 series</h3>

<p>Follow the instructions for compiling the batocera system on their main page.</p>

<p>To compile for the RG35XX H series need to do</p>
  <ul><li>sudo make h700-build  :- This builds it</li><
  <li>sudo make h700-clean :- This cleans the previous build</li>
  <li>sudo make h700-shell :- This creates a shell you can check out command sin to solve any issues</li></ul>

 <p>I had issues with compile, so I also run the command "sudo make -k h700-build 2>&1 | tee build.log"</p>

<p>Before this need to patch some files, which have been done in this github.</p>
    <ul>
    <li>:- package\batocera\emulators\retroarch\libretro\libretro-parallel-n64\libretro-parallel-n64.mk</li>
    <li>:- SDL2 will fail to compile due to a missing ; on line 37 in the file SDL_maliblitter.h in output\h700\build\sdl2-2.28.5\src\video\mali-fbdev</li>
    </ul>

<p>If need to add new python packages then modify the batocera-board.common file /configs and set the build name of the package to y</p>
       <p>e.g. To add the python pip package add the line BR2_PACKAGE_PYTHON_PIP=y to the # python choices list in the file above.</p>

<p>Will also need to add a new folder to package/batocera/{relevant sub dir} for the new package with a config.in and packagename.mk file. See other folders for examples of the chnages to make (e.g. see python-simplepyble in the package\batocera\libraries\python-simplepyble folder.)</p>

<p>I assume you can add any system specific ones to the .board file for the actual platform trying to build for.</p>

