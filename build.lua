#!/usr/bin/env texlua

-- Build script for "csquotes" files

-- Identify the bundle and module
bundle = ""
module = "csquotes"

-- Install .def files as well as .sty
-- These are also the sources
installfiles = {"*.cfg", "*.def", "*.sty"}
sourcefiles  = installfiles

checkruns = 2

-- Documentation is standalone
typesetfiles = {"*.tex"}

-- No packed source files
unpackfiles = { }

-- Release a TDS-style zip
packtdszip  = true

-- Detail how to set the tag automatically
tagfiles = {"*.def", "*.sty", "*.tex"}
function update_tag(file,content,tagname,tagdate)
  if not string.match(file, "%.tex$") then
    return string.gsub(content,
      "\n  %[%d%d%d%d%-%d%d%-%d%d [^ ]*v%d%.%d.?", -- ]
      "\n  [" .. tagdate .. " " .. "v" .. tagname)
  else
    return string.gsub(content,
      "\n  revision=%{v%d%.%d.?%},\n  date=%{%d%d%d%d%-%d%d%-%d%d%}",
      "\n  revision={v" .. tagname .. "},\n  date={" .. tagdate .. "}")
  end
  return contents
end

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
if not release_date then
  dofile(kpse.lookup("l3build.lua"))
end

