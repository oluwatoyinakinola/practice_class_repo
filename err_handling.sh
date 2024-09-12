#! /bin/bash

#$?

#set -e

error_h() {
         echo "something went wrong somewhere"

}

trap "error_h" ERR


ls -l /opdjgkgll 2> /dev/null

echo "==========="
