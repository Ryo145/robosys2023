#!/bin/bash -xv
# SPDX-FileCopyrightText; 2023 Ryosuke Suxuki ryo135791113@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

ng (){
echo NG at Line $1
res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(echo -e "0" | ./plus)
[ "${out}" = 0 ] || ng ${LINENO}

out=$(echo -e "-1\n-2\n-3" | ./plus)
[ "${out}" = -6 ] || ng ${LINENO}

out=$(echo -e "1.5\n2.5\n3.5" | ./plus)
[ "${out}" = 7.5 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
