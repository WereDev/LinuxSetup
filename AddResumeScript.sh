#!/bin/bash
if [[ $(id -u) -ne 0 ]] ; then echo "Please run ConfigureSystem with sudo or as root" ; exit 1 ; fi

folder=$PWD
scriptsFolder="$folder/Scripts"
wakeScript="$scriptsFolder/SetUsbWakeStates.sh"

cat <<EOS >/lib/systemd/system-sleep/mysuspendresume
#!/bin/bash

if [ "${1}" == "pre" ]; then
  # Do the thing you want before suspend here, e.g.:
  
elif [ "${1}" == "post" ]; then
  # Do the thing you want after resume here, e.g.:
  $wakeScript
fi

exit 0

EOS

chmod +x /lib/systemd/system-sleep/mysuspendresume
