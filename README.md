# college-scorecard-terraform-ndixon
Scripting for creating resources for College Scorecard analysis using terraform

# Setup for pre-commit

This project uses [pre-commit](https://pre-commit.com/) to enforce code formatting standards and to check for secrets.

The pre-commit cli tool should be installed as a dev dependency in this project managed by Poetry.

#### Install Poetry:
    brew install poetry

#### Validate Poetry installation:
    poetry --version

If using the git functionality of vscode, Poetry needs to be configured to creat the python virtual env in the project root directory so vscode can pick it up as an interpreter

#### Install project dependencies (from the project's root folder):
    poetry config virtualenvs.in-project true
    poetry install

#### Initializing virtual environment with poetry shell
    poetry shell

pre-commit is run as a git hook after running this command:
```
pre-commit install
```

It will then automatically run the pre-commit checks every time that you run `git commit`.

To run the pre-commit ad-hoc (useful for testing) you can execute the following command from the root of the repository:
```
pre-commit run --all-files
```
