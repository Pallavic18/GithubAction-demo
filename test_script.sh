#!/bin/sh

# Print usage information.
function usage {

    echo "sh ad_hoc_run.sh"
    echo "-c <comma-separated-list-of-collection-names>"
    echo "-e <env>"
    echo "-d <notify-default-email-group>"
    echo "-n <semi-colon-separated-list-of-email-addresses-to-notify>"
    echo "-g <generate-lima-headers>"
    echo "-l <lima-headers>"
    echo "-s <smoke-tests>"
    echo "-p <proxy-host>"
}

while [ "$1" != "" ]; do
    case $1 in
        -h | --help )           usage
                                exit
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done
