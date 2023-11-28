#!/bin/bash -xv
# SPDX-FileCopyrightText; 2023 Ryosuke Suzuki ryo135791113@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

ng (){
echo NG at Line $1
res=1
}

res=0

out=$(seq 5 | ./plus)
if [ "${out}" != 15 ]; then
    ng ${LINENO}
fi

out=$(seq 4 5 | ./plus)
if [ "${out}" != 9 ]; then
    ng ${LINENO}
fi

if [ "$res" = 0 ]; then
    echo "OK"
fi

exit $res

