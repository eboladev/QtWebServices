# Copyright 2008 28msec, Inc.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
SET(CPACK_PACKAGE_VERSION_MAJOR  ${LIBAWS_MAJOR_VERSION})
SET(CPACK_PACKAGE_VERSION_MINOR  ${LIBAWS_MINOR_VERSION})
SET(CPACK_PACKAGE_VERSION_PATCH  ${LIBAWS_PATCH_VERSION})

SET(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_SOURCE_DIR}/README.txt")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "libaws - A Amazon Web Services C++ Library")
SET(CPACK_PACKAGE_EXECUTABLES "s3")
SET(CPACK_PACKAGE_NAME "libaws")
SET(CPACK_PACKAGE_CONTACT "matthias.brantner@28msec.com")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_SOURCE_DIR}/README.txt")
SET(CPACK_PACKAGE_VENDOR "28msec, Inc.")
SET(CPACK_PACKAGE_VERSION "${LIBAWS_MAJOR_VERSION}.${LIBAWS_MINOR_VERSION}.${LIBAWS_PATCH_VERSION}")
SET(CPACK_PACKAGE_FILE_NAME "libaws-${LIBAWS_MAJOR_VERSION}.${LIBAWS_MINOR_VERSION}.${LIBAWS_PATCH_VERSION}")
SET(CPACK_PACKAGE_VERSION_MAJOR "${CPACK_PACKAGE_VERSION_MAJOR}")
SET(CPACK_PACKAGE_VERSION_MINOR "${CPACK_PACKAGE_VERSION_MINOR}")
SET(CPACK_PACKAGE_VERSION_PATCH "${CPACK_PACKAGE_VERSION_PATCH}")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "libaws ${LIBAWS_MAJOR_VERSION}.${LIBAWS_MINOR_VERSION}")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "libaws ${CPACK_PACKAGE_VERSION}")
SET(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_SOURCE_DIR}/LICENSE.txt")

SET(CPACK_DEBIAN_PACKAGE_NAME "libaws")
SET(CPACK_DEBIAN_PACKAGE_DEPENDS "libcurl3-dev, libcurl4-openssl-dev, libxml2-dev")

INCLUDE(CPack)
