#!/bin/bash
# SPDX-FileCopyrightText; 2023 Ryosuke Suxuki ryo135791113@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

out=$(seq 5 | ./plus)


[ "${out}" = 15 ]
