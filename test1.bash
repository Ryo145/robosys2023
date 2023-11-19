#!/bin/bash -xv
# SPDX-FileCopyrightText; 2023 Ryosuke Suxuki ryo135791113@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

ng() {
    echo "NG at Line $1"
    res=1
}

res=0

# 加算
out=$(python3 vbn 1 2)
expected="加算の結果:  3.0\n減算の結果:  -1.0\n乗算の結果:  2.0\n除算の結果:  0.5"
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

[ "$res" = 0 ] && echo OK

exit $res

