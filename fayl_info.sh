#!/bin/bash
# 1.Arqumentin verilib-verilmediyini yoxlayiriq
if [ $# -eq 0 ]; then
	echo "Istifade: ./fayl_info.sh <fayl>"
	exit 1
fi
# 2. Faylin movcud olub-olmadigini yoxlayiriq
if [ ! -f "$1" ]; then
	echo "$1 tapilmadi"
	exit 2
fi
# 3.Fayl movcuddursa, setir sayini hesablamaq ve cap etmek
SETIR=$(wc -l < "$1")
echo "$1 faylinda $SETIR setir var."
exit 0
