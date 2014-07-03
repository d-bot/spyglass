require 'mkmf'

dir_config("spyglass_parser")
have_library("c", "main")

create_makefile("spyglass_parser")
