#!/bin/bash

cp ${RECIPE_DIR}/CMakeLists.txt ${SRC_DIR}
cmake ${CMAKE_ARGS} ${SRC_DIR} -DCMAKE_BUILD_TYPE=Release \
                    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
                    -DBUILD_SHARED_LIBS=ON

make -j${CPU_COUNT}
make install
