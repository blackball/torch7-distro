SET(Torch_INSTALL_PREFIX ${CMAKE_INSTALL_PREFIX})

SET(Torch_INSTALL_BIN_SUBDIR "bin" CACHE PATH
  "Install dir for binaries (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_MAN_SUBDIR "share/man" CACHE PATH
  "Install dir for man pages (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_LIB_SUBDIR "lib" CACHE PATH
  "Install dir for archives (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_SHARE_SUBDIR "share" CACHE PATH
  "Install dir for data (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_INCLUDE_SUBDIR "include/torch" CACHE PATH
  "Install dir for include (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_DOK_SUBDIR "share/torch/dok" CACHE PATH
  "Install dir for dokuwiki files (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_DOKMEDIA_SUBDIR "share/torch/dokmedia" CACHE PATH
  "Install dir for dokuwiki media files (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_HTML_SUBDIR "share/torch/html" CACHE PATH
  "Install dir for .html files (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_CMAKE_SUBDIR "share/cmake/torch" CACHE PATH
  "Install dir for .cmake files (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_LUAROCKS_SYSCONF_SUBDIR "etc/luarocks" CACHE PATH
  "Install sysconf path for Luarocks (if -DWITH_LUAROCKS=ON)")

SET(Torch_INSTALL_LUAROCKS_ROCKS_SUBDIR "lib/luarocks/rocks" CACHE PATH
  "Install rock path for Luarocks (if -DWITH_LUAROCKS=ON)")

OPTION(WITH_LUA_PACKAGE_PATH "Use the package path from lua instead of the one from Torch" OFF)

IF(WITH_LUA_PACKAGE_PATH)
  SET(Torch_PACKAGE_PATH "lua/5.1")
ELSE(WITH_LUA_PACKAGE_PATH)
  SET(Torch_PACKAGE_PATH "torch/lua")
ENDIF(WITH_LUA_PACKAGE_PATH)

SET(Torch_INSTALL_LUA_PATH_SUBDIR "share/${Torch_PACKAGE_PATH}" CACHE PATH
  "Install dir for Lua packages files (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_LUA_CPATH_SUBDIR "lib/${Torch_PACKAGE_PATH}" CACHE PATH
  "Install dir for Lua C packages files (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_LUA_PKG_PATH_SUBDIR "${Torch_INSTALL_LUA_PATH_SUBDIR}")
