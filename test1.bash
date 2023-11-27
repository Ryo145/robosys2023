#!/bin/bash -xv
# SPDX-FileCopyrightText; 2023 Ryosuke Suxuki ryo135791113@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

ng() {
    echo "NG at Line $1"
    res=1
}

res=0

out=$(python3 vbn 0 0)
expected=$'加算の結果:  0.0\n減算の結果:  0.0\n乗算の結果:  0.0\nエラー: 0で割ることはできません'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn 1 2)
expected=$'加算の結果:  3.0\n減算の結果:  -1.0\n乗算の結果:  2.0\n除算の結果:  0.5'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn 10 0)
expected=$'加算の結果:  10.0\n減算の結果:  10.0\n乗算の結果:  0.0\nエラー: 0で割ることはできません'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn -1 -2)
expected=$'加算の結果:  -3.0\n減算の結果:  1.0\n乗算の結果:  2.0\n除算の結果:  0.5'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn -1 0)
expected=$'加算の結果:  -1.0\n減算の結果:  -1.0\n乗算の結果:  -0.0\nエラー: 0で割ることはできません'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn -1.2 2)
expected=$'加算の結果:  0.8\n減算の結果:  -3.2\n乗算の結果:  -2.4\n除算の結果:  -0.6'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn 2 3 4)
expected=$'加算の結果:  9.0\n減算の結果:  -5.0\n乗算の結果:  24.0\n除算の結果:  0.16666666666666666'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

if [ "$res" = 0 ]; then
    echo "OK"
fi

exit $res

