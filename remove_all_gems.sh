#! /usr/bin/env bash

# Remove ALL gems without prompting

# Using xargs -L 1 to process gems one-by-one, which is slower but allows
# continuing when uninstall fails. This also helps to work around a gem 1.8.5
# bug that prevents uninstalling multiple gems at once
gem list | cut -d" " -f1 | xargs -L 1 gem uninstall -aIxV

