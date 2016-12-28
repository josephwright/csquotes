#!/usr/bin/env texlua

-- Build script for "csquotes" files

-- Identify the bundle and module
bundle = ""
module = "csquotes"

-- Install .def files as well as .sty
-- These are also the sources
installfiles = {"*.cfg", "*.def", "*.sty"}
sourcefiles  = installfiles

-- Documentation is standalone
typesetfiles = {"*.tex"}

-- No packed source files
unpackfiles = {""}

-- Release a TDS-style zip
packtdszip  = true

-- No tests for this bundle
testfildir = ""

-- Detail how to set the version automatically
versionfiles = {"*.def", "*.sty", "*.tex"}
function setversion_update_line(line, date, release)
  local date = string.gsub(date, "%-", "/")
  -- Code
  if string.match(line,  "^  %[%d%d%d%d/%d%d/%d%d") then
    line = string.gsub(line, "%d%d%d%d/%d%d/%d%d [^ ]*", date ..  " " .. release)
  end
  -- Docs
  if string.match(line,  "^  date=") then
    line = string.gsub(line, "{[^}]*}", "{" .. date .."}")
  end
  if string.match(line,  "^  revision=") then
    line = string.gsub(line, "{[^}]*}", "{" .. release .."}")
  end
  return line
end

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
dofile (kpse.lookup ("l3build.lua"))
