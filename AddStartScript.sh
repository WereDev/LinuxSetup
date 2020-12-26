#!/bin/bash
if [[ $(id -u) -ne 0 ]] ; then echo "Please run ConfigureSystem with sudo or as root" ; exit 1 ; fi

folder=$PWD
scriptsFolder="$folder/Scripts"
wakeScript="$scriptsFolder/SetUsbWakeStates.sh"

cat <<EOS >/etc/init.d/mystartup
#!/bin/bash
# chkconfig: 2345 20 80

start() {
    # code to start app comes here 
    # example: daemon program_name &

    $wakeScript
}

stop() {
    # code to stop app comes here 
    # example: killproc program_name
}

case "$1" in 
    start)
       start
       ;;
    stop)
       stop
       ;;
    restart)
       stop
       start
       ;;
    status)
       # code to check status of app comes here 
       # example: status program_name
       ;;
    *)
       echo "Usage: $0 {start|stop|status|restart}"
esac

exit 0 

EOS

chmod +x /etc/init.d/mystartup
