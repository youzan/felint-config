Felint Config
========

## 配置

### 配置规则文件

请在`rules`目录下加入需要的配置规则文件。

命名方式为`.eslintrc_type.json` `.stylelintrc_type.json`。

### 配置git钩子

增/删/修改hooks目录下的shell文件，然后修改`update_git_hooks`逻辑应用你自己的修改。

### 配置依赖

修改config.js文件内的dependence.npm内容

### 配置规则方案

修改config.js文件内plan字段，key为方案名，一个方案可以对应不同的eslintrc和stylelintrc文件组合