#!/usr/bin/env bash
set -e # all commands must pass

SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )

cd "$SCRIPTPATH"
if [ ! -d ../d8camp-vm ]; then
  echo "Cloning git@github.com:geerlingguy/drupal-vm.git to ../d8camp-vm"
  git clone git@github.com:geerlingguy/drupal-vm.git ../d8camp-vm
  cd ../d8camp-vm
  git checkout tags/2.1.1
fi

cd "$SCRIPTPATH"
echo "Transferring config to ../d8camp-vm/config.yml"
cp ./tests/build/d8camp-vm.config.yml ../d8camp-vm/config.yml
sed -e "s?%D8CAMP_PWD%?$(pwd)?g" --in-place ../d8camp-vm/config.yml
