#!/bin/bash

# Auto install script for Firefox addons inspired by the great post of
# askubuntu community.
# http://askubuntu.com/questions/73474/how-to-install-firefox-addon-from-command-line-in-scripts

set -eu

addon_url=$1

# Is xpi?
if [[ "$addon_url" =~ ^https?://.*\.xpi$ ]]; then
    printf "Invalid URL.\n"
    exit 1
fi

# Is wget installed?
if ! which wget >/dev/null 2>&1; then
    printf "wget is not installed.\n"
    exit 1
fi

# find profile dir (first profile in the ini file)
profile_dir=$(cat ${HOME}/.mozilla/firefox/profiles.ini | \
                     sed -n -e 's/^.*Path=//p' | \
                     head -n 1)
addon_dir="${HOME}/.mozilla/firefox/${profile_dir}/extensions/"

if [ -z "$profiledir" ]; then
    printf "Can't find profile directory."
    exit 1
fi

mkdir /opt/extension
cd /opt/extension || exit $?

# get extension and unzip
wget -O extension.xpi "https://addons.mozilla.org/firefox/downloads/latest/${extensionnumber}/addon-${extensionnumber}-latest.xpi" || exit $?
unzip extension.xpi && rm extension.xpi

# get extension id from installation file
extensionid=`grep -m 1 -e em:id install.rdf`   
extensionid=${extensionid#*\>}
extensionid=${extensionid%<*}

# move all files to the directory with the right id
mkdir $extensionid || exit $?
shopt -s extglob dotglob
mv !($extensionid) $extensionid/
shopt -u dotglob

# create new firefox extension dir (if it's a clean install) and move the extension
mkdir -p "${extensiondir}"
mv "${extensionid}" "${extensiondir}"

rmdir /tmp/extension
printf "Installed extension."
exit 0
