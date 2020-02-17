# eslint

## Installation
1. Install eslint by running `yarn add eslint --dev`
1. We mainly follow [standardJS](https://standardjs.com/)
    1. To install `yarn add eslint-config-standard eslint-plugin-standard eslint-plugin-promise eslint-plugin-import eslint-plugin-node --dev`
1. Add script to `package.json`
    ```
      scripts: {
        "lint": "eslint 'path/to/**/*'"
      }
      ```
1. Copy the files into your repository
   > If you uses multiple framework in your repository, put the eslint configuration in the respective folder and update the script accordingly
   ```
      scripts: {
        "lint": "eslint 'path/to/**/*' 'path/to/**/*.{js,test.js,jsx}'"
      }
      ```

## Useful commands
1. To view problems:    `yarn run lint`
1. To autofix:          `yarn run lint --fix`
1. To view config:      `eslint --print-config 'path/to/.eslintrc.json'`
1. To view all errors:  `yarn run lint | grep -v "^[\/✖]" | grep -v '^$' | perl -ne 's/(?:.+) ([\/\w-]+$)/$1/g; print;' | sort | uniq -c | sort`

## Configuration
### globals
1. It is highly specific to individual repository

### ignorePatterns
1. If you wish to ignore any files in the directory, you can include the relative path to file
1. If you wish to ignore any file extensions, you can include the wildcard

## ReactJS specific setting
1. Additional packages we use
    1. eslint-plugin-jest
    1. eslint-plugin-jsx
    1. eslint-plugin-react
    1. eslint-plugin-react-perf
    1. eslint-plugin-react-redux
    1. eslint-config-standard-react
1. Update parser and parserOption in `.eslintrc.json`
1. Include specific plugins and extends in `.eslintrc.json`

## BackboneJS specific setting
1. Additional packages we use
    1. eslint-plugin-coffeescript
1. Update parser and parserOption in `.eslintrc.json`
1. Include specific plugins and extends in `.eslintrc.json`
