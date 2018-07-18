/**

Eslint quickstart config
------------------------

yarn add --dev eslint eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react

Rules details:
- https://github.com/benmosher/eslint-plugin-import
- https://github.com/evcohen/eslint-plugin-jsx-a11y
- https://github.com/yannickcr/eslint-plugin-react

**/

module.exports = {
  extends: [
    'airbnb',
    'plugin:jsx-a11y/recommended',
  ],

  plugins: [
    'import',
    'jsx-a11y',
    'react',
  ],

  extends: [
    // [eslint]
    'semi': ['error', 'never'],
    'object-curly-spacing': ['error', 'never'],
    'lines-between-class-members': 0,
    'arrow-parens': ['error', 'as-needed'],
    'arrow-body-style': 0,
    'prefer-promise-reject-errors': 0,
    'comma-dangle': ['error', {
      functions: 'never',
      objects: 'always-multiline',
      arrays: 'always-multiline',
      imports: 'always-multiline',
    }],

    // [react]
    'react/jsx-one-expression-per-line': 0,
    'react/forbid-prop-types': 0,
    'react/destructuring-assignment': 0,
    'react/jsx-closing-bracket-location': ['error', 'props-aligned'],

    // [import]
    'import/no-extraneous-dependencies': 0,
    'import/prefer-default-export': 0,

    // [a11y]
    'jsx-a11y/label-has-for': 0, /* that one was deprecated */
  ],
}
