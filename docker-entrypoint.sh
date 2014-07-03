#!/bin/bash

pushd /docker/rpmbuild > /dev/null
  /usr/bin/rpmbuild "$@" --define="_topdir /docker/rpmbuild"
popd > /dev/null
