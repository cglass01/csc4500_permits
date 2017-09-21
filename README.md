# README

## Rules for development
- In order to contribute to repository...
    1. Fork this repository.
    2. Create accurately named branches in your fork for each individual development goal.
    3. Submit pull requests to the 'develop' branch of this repository.
- /config/database.yml has been added to the .gitignore file. The file database.default has been provided. Create a copy of this file named 'database.yml' and enter your local mysql credentials into your new file.
- Whenever you create a Model or Controller, you **must** edit the corresponding test script that automatically populates in the /test/ directory
