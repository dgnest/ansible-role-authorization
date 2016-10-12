#!/usr/bin/env bash
# -*- coding: utf-8 -*-

[ -r "script/bootstrap.sh" ] && source "script/bootstrap.sh"

# FIXMEE: vars to delete
rm -rf **/**/*__pycache__ >> /dev/null 2>&1
rm -rf **/**/*.pyc >> /dev/null 2>&1
rm -rf **/**/*.swp >> /dev/null 2>&1
