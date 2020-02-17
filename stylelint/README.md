# Stylelint

## Installation

1. Install stylelint by running `yarn add stylelint --dev`
1. Add script to `package.json`
    ```
      scripts: {
        "stylelint": "stylelint '**/*.scss'"
      }
      ```
1. Copy the files into your repository
1. Run `yarn run stylelint`

## Useful commands
1. To view problems:  `yarn run stylelint`
1. To autofix:        `yarn run stylelint --fix`
