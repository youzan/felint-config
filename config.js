module.exports = {
    dependence: {
        npm: {
            "eslint": "3.19.0",
            "babel-eslint": "7.2.1",
            "eslint-config-airbnb": "14.1.0",
            "stylelint": "7.10.1",
            "stylelint-config-standard": "16.0.0"
        }
    },
    plan: {
        es6: ['.eslintrc_es6', '.stylelintrc'],
        es5: ['.eslintrc_es5', '.stylelintrc'],
        default: ['.eslintrc_es6', '.stylelintrc']
    },
    initHooks: 'uodate_git_hooks.sh'
}