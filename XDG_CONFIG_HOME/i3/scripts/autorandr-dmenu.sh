#!/bin/sh
autorandr | dmenu | awk '{ print $1 }' | xargs autorandr
