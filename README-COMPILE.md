<h3>This is how to compile for the H700 series</h3>

<p>Follow the instructions for compiling the batocera system on their main page.</p>

<p>To compile for the RG35XX H series need to do</p>
  <ul><li>sudo make h700-build  :- This builds it</li>
  <li>sudo make h700-clean :- This cleans the previous build</li>
  <li>sudo make h700-shell :- This creates a shell you can check out command sin to solve any issues</li>
  <li>sudo make h700-pkg PKG=packagename :- This will compile individual packages</li>
  </ul>
  
<p>To speed up compile time and stop any issues, I had to comment out any references to compiling mame. Edit the Config.in in teh root directory and comment out (put a #) any line that references mame. This repo will have two files for Configin. One that has this already done and the other that doesn't.</p>

 <p>I had issues with compile, so I also run the command "sudo make -k h700-build 2>&1 | tee -a build.log". This writes the output to an external file so I can monitor what is going on, espically remotley as can just check the last modify time of the file to see if it has finished</p>

<p>Before this need to patch some files, which have been done in this github.</p>
    <ul>
    <li>package\batocera\emulators\retroarch\libretro\libretro-parallel-n64\libretro-parallel-n64.mk</li>
    <li>SDL2 will fail to compile due to a missing ; on line 37 in the file SDL_maliblitter.h in output\h700\build\sdl2-2.28.5\src\video\mali-fbdev<ul><li>This can be fixed by modifying the patch file in board\batocera\allwinner\h700\rg35xx-plus\patches\sdl2 called 0004-Rework-blitter-thread-sync.patch </li></ul></li>
    <li>The version of xa needs bumping upto 2.4.1 from 2.4.0. Nopt changed in this repo yet as I cant remember where the config.in is for that lib</li>
    </ul>

<p>If need to add new python packages then modify the batocera-board.common file /configs and set the build name of the package to y</p>
       <p>e.g. To add the python pip package add the line BR2_PACKAGE_PYTHON_PIP=y to the # python choices list in the file above.</p>

<p>Need to add sections about adding certaiun python modules ot teh host compile as well as the target. e.g. I had issues compiling the simplepyble python module as cython and pybind was only added to the final build and I didt add to the host build (So I added them manually by runnign teh shell command above and calling the correct python binary in the /h700 sub directories and running the pip command (after I had locally installed that) </p>

<p>Will also need to add a new folder to package/batocera/{relevant sub dir} for the new package with a config.in and packagename.mk file. See other folders for examples of the chnages to make (e.g. see python-simplepyble in the package\batocera\libraries\python-simplepyble folder.)</p>

<p>I assume you can add any system specific ones to the .board file for the actual platform trying to build for.</p>

