#!/bin/bash -xv
# SPDX-FileCopyrightText; 2023 Ryosuke Suzuki ryo135791113@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

ng() {
    echo "NG at Line $1"
    res=1
}

res=0

out=$(python3 vbn 0 0)
expected=$'0.0\n0.0\n0.0\nエラー: 0で割ることはできません'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn 1 2)
expected=$'3.0\n-1.0\n2.0\n0.5'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn 10 0)
expected=$'10.0\n10.0\n0.0\nエラー: 0で割ることはできません'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn -1 -2)
expected=$'-3.0\n1.0\n2.0\n0.5'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn -1 0)
expected=$'-1.0\n-1.0\n-0.0\nエラー: 0で割ることはできません'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn -1.2 2)
expected=$'0.8\n-3.2\n-2.4\n-0.6'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn 2 3 4)
expected=$'9.0\n-5.0\n24.0\n0.16666666666666666'
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn 3 4 a d f)
expected=$"エラー: 'a', 'd', 'f' は数値ではありません"
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn 1 あ 2 い)
expected=$"エラー: 'あ', 'い' は数値ではありません"
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

out=$(python3 vbn 10 20 @)
expected=$"エラー: '@' は数値ではありません"
if [ "${out}" != "${expected}" ]; then
    ng ${LINENO}
fi

if [ "$res" = 0 ]; then
    echo "OK"
fi

exit $res

