set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_C_COMPILER   /home/debian/arm-2012.03/bin/arm-none-linux-gnueabi-gcc)
set(CMAKE_CXX_COMPILER /home/debian/arm-2012.03/bin/arm-none-linux-gnueabi-g++)

set(CMAKE_FIND_ROOT_PATH  /home/debian/arm-2012.03 /home/debian/arm-2012.03/arm-none-linux-gnueabi)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

add_definitions(-D__LOWRES__)

#add_definitions(-include /home/debian/milkytracker/pax_printf.h)

set(SDL_INCLUDE_DIR /home/debian/SDL-1.2/include)
set(SDL_INCLUDE_DIRS /home/debian/SDL-1.2/include)
link_directories(/home/debian/SDL-1.2/build/.libs)
set(SDL_LIBRARIES SDL)
