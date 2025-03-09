# Incubyte String Calculator App

## Overview
This project is a simple string calculator built using Ruby on Rails, following the Test-Driven Development (TDD) approach. The application takes a string of comma-separated numbers and returns their sum, while supporting custom delimiters and handling negative numbers.

## Features
- Returns the sum of numbers in a string.
- Supports new line (`\n`) as a delimiter along with `,`.
- Allows custom delimiters defined in the format `//[delimiter]\n[numbers...]`.
- Throws an exception when negative numbers are included in the input.
- Written with best practices using TDD.

## Requirements
- Ruby: 2.6.1
- Rails: 5.2.8.1

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/your_username/incubyte_string_calculator_app.git
   cd incubyte_string_calculator_app
   ```

2. Install dependencies:
   ```sh
   bundle install
   ```

## Running the Application

Start the Rails server:
```sh
rails server
```

Access the application in your browser at `http://localhost:3000`

## Running Tests

This project uses RSpec for testing. Run the tests using:
```sh
rspec
```

Make sure you have the `rspec-rails` gem installed:
```sh
gem 'rspec-rails', group: [:development, :test]
```

Then, initialize RSpec:
```sh
rails generate rspec:install
```

## Git Commands Used

- Initialize a new repository:
  ```sh
  git init
  ```

- Add files to staging:
  ```sh
  git add .
  ```

- Commit changes with a meaningful message:
  ```sh
  git commit -m "Initial commit with TDD implementation of String Calculator"
  ```

- Push to GitHub:
  ```sh
  git branch -M main
  git remote add origin https://github.com/your_username/incubyte_string_calculator_app.git
  git push -u origin main
  ```

## Contributing
Feel free to fork this repository, make changes, and submit a pull request.

## License
This project is open-source and available under the MIT License.
