Felint Config
========

## 配置

### 安装依赖

安装所依赖的npm包和gem包：

```
npm install -g eslint && npm install -g eslint-plugin-react
gem install scss_lint
```

### 校验配置

代码检查配置请配置`.eslintrc`、`.eslintignore`和`.scss-lint.yml`三个文件，然后运行`update_git_hooks.sh`。

详细规范配置

 - [eslint](http://eslint.org/docs/rules/)
 - [scss](https://github.com/brigade/scss-lint/blob/master/lib/scss_lint/linter/README.md)

## 工具

### html-css-js prettify

`Sublime`插件：`html-css-js prettify`，按`shift+command+h`能自动规范大部分代码。

### SublimeLinter

`Sublime`插件：`SublimeLinter`、`SublimeLinter-contrib-eslint`和`SublimeLinter-contrib-scss-lint`插件，在文件保存时就可以验证是否符合规范，红的提示为error必须修改为规范的代码，黄的为warning可以忽略，减少commit代码时不符合规范又要重新改的时间。