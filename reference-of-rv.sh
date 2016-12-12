#!/bin/sh

TT=$(date "+%s")
DIST=${HOME}/dustbox/.rv

for name in "$@"
do
  fff=$(basename "$name")
  ddd=$(dirname "$name")

  cd ${ddd}
  ppp=$(pwd)

  cd - > /dev/null

  ddd=$(echo "${ppp}" | sed -e "s|/|%|g")
  mv -i --strip-trailing-slashes -- "$name" "${DIST}/${fff}_#${TT}_${ddd}"
done

# 課題
# 1/16提出
# 1. reference-of-rv.shについて説明
# 2. 仮想計算機について（内容は任意）
#    ２ページ以上、図は別
#    参考文献、URLを表記
#    ------------------------------------
#    | 学生記番号　氏名                 |
#    | DJ1　特別演習１　レポート　提出日|
