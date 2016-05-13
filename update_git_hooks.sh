#!/bin/bash

# Check for eslint
which eslint &> /dev/null
if [[ "$?" == 1 ]]; then
  printf '\n========== Install eslint ==========\n'
  npm install -g eslint
  npm install -g eslint-plugin-react
fi

# cd to hooks folder
isInHooks=$(pwd | grep 'git_hooks')
if [[ $isInHooks == '' ]]; then
	cd git_hooks
fi

printf '\n========== init .eslintrc ==========\n'
cp ./.eslint* ..
cp ./.scss-lint.yml ..

printf '\n\n========== chmod hook ==========\n'
chmod a+x ./pre-commit
chmod a+x ./pre-push

printf '\n\n========== ln hook ==========\n'
cd ../.git/hooks/
rm -f pre-commit pre-push post-merge commit-msg
ln -sv ../../git_hooks/pre-commit .
ln -sv ../../git_hooks/pre-push .

printf '\n\n如eslint和eslint-plugin-react未安装成功：\033[32m npm install -g eslint && npm install -g eslint-plugin-react\033[0m\n'
