#!/usr/bin/env -S just --justfile

alias f := flash
alias b := build

keyboard := 'ploopyco/trackball_nano/rev1_001'
keymap := 'choco'

default: build

flash:
    qmk flash -kb {{keyboard}} -km {{keymap}}

build:
    qmk compile -kb {{keyboard}} -km {{keymap}}
