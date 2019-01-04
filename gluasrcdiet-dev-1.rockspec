-- vim: set ft=lua:

package = 'gluasrcdiet'
version = 'dev-1'

source = {
  url = 'git://github.com/star-wars-vehicles/gluasrcdiet.git',
  branch = 'master',
}

description = {
  summary = 'Compresses Lua source code by removing unnecessary characters',
  detailed = [[
This is revival of LuaSrcDiet originally written by Kein-Hong Man. Support for GLua]],
  homepage = 'https://github.com/star-wars-vehicles/gluasrcdiet',
  maintainer = 'David Katz <mciluziionz@gmail.com> and Jakub Jirutka <jakub@jirutka.cz>',
  license = 'MIT',
}

dependencies = {
  'lua >= 5.1',
}

build = {
  type = 'builtin',
  modules = {
    ['luasrcdiet'] = 'luasrcdiet/init.lua',
    ['luasrcdiet.equiv'] = 'luasrcdiet/equiv.lua',
    ['luasrcdiet.fs'] = 'luasrcdiet/fs.lua',
    ['luasrcdiet.llex'] = 'luasrcdiet/llex.lua',
    ['luasrcdiet.lparser'] = 'luasrcdiet/lparser.lua',
    ['luasrcdiet.optlex'] = 'luasrcdiet/optlex.lua',
    ['luasrcdiet.optparser'] = 'luasrcdiet/optparser.lua',
    ['luasrcdiet.plugin.example'] = 'luasrcdiet/plugin/example.lua',
    ['luasrcdiet.plugin.html'] = 'luasrcdiet/plugin/html.lua',
    ['luasrcdiet.plugin.sloc'] = 'luasrcdiet/plugin/sloc.lua',
    ['luasrcdiet.utils'] = 'luasrcdiet/utils.lua',
  },
  install = {
    bin = {
      gluasrcdiet = 'bin/luasrcdiet',
    }
  }
}
