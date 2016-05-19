#!/bin/bash

# Check for eslint
which eslint &> /dev/null
if [[ "$?" == 1 ]]; then
  printf '\n========== Install eslint ==========\n'
  npm install -g eslint
  npm install -g eslint-plugin-react
fi

# Check for scss_lint
which scss-lint &> /dev/null
if [[ "$?" == 1 ]]; then
  printf '\n========== Install scss_lint ==========\n'
  gem install scss_lint
fi

# cd to hooks folder
isInHooks=$(pwd | grep '.git_hooks')
if [[ $isInHooks == '' ]]; then
	cd .git_hooks
fi

printf '\n========== init .eslintrc ==========\n'
cp ./.eslint* ..
cp ./.scss-lint.yml ..

printf '\n\n========== chmod hook ==========\n'
chmod a+x ./pre-commit
chmod a+x ./pre-push
chmod a+x ./commit-msg

printf '\n\n========== ln hook ==========\n'
mkdir ../.git/hooks/
cd ../.git/hooks/
rm -f pre-commit pre-push post-merge commit-msg
ln -sv ../../.git_hooks/pre-commit .
ln -sv ../../.git_hooks/pre-push .
ln -sv ../../.git_hooks/commit-msg .

printf '\n\n如eslint和eslint-plugin-react未安装成功：\033[32m npm install -g eslint && npm install -g eslint-plugin-react\033[0m'
printf '\n\n如 scss_lint 未安装成功：\033[32m gem install scss_lint \033[0m\n'