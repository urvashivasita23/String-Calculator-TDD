# String-Calculator-TDD
The following is a TDD Kata- an exercise in coding, refactoring and test-first

## Table of Contents

- [Installation](#installation)
- [Supported Features](#supported-features)

## Installation

To install the String Calculator library, you can simply clone this repository:

```bash
git clone https://github.com/your_username/string-calculator.git
```
## Supported Features

The String Calculator library supports the following features:

- **Addition of numbers**: You can provide a string containing numbers separated by commas, and the library will return the sum of those numbers.
  
- **Support for different delimiters**: Besides commas, you can specify custom delimiters by prefixing the input string with `//` followed by the delimiter. For example, `//;\n1;2;3` uses `;` as the delimiter.

- **Handling of negative numbers**: If the input string contains negative numbers, the library will raise a `RuntimeError` with a message indicating that negative numbers are not allowed.

- **Validation for invalid input**: The library validates input strings and raises appropriate errors for invalid input. For example, if the input string ends with `,\\n`, indicating an invalid sequence, the library will return `'Not Allowed'`.
