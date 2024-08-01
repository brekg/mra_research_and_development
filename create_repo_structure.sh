#!/bin/bash

# Function to create directory and echo status
create_dir() {
    mkdir -p "$1"
    echo "Created directory: $1"
}

# Create main project directory
read -p "Enter project name: " project_name
create_dir "$project_name"
cd "$project_name"

# Create directory structure
create_dir "data/raw"
create_dir "data/processed"
create_dir "data/external"
create_dir "notebooks"
create_dir "src/data/acquisition"
create_dir "src/data/preprocessing"
create_dir "src/features"
create_dir "src/models"
create_dir "src/visualization"
create_dir "sql"
create_dir "config"
create_dir "tests"
create_dir "docs"

# Create README.md
cat << EOF > README.md
# $project_name

Brief description of the project.

## Installation

\`\`\`bash
Installation commands here
\`\`\`

## Usage

\`\`\`python
Usage example here
\`\`\`

## Features

- Feature 1
- Feature 2
- ...

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)
EOF

echo "Created README.md"

# Create placeholder files
touch data/raw/.gitkeep
touch data/processed/.gitkeep
touch data/external/.gitkeep
touch notebooks/exploratory_analysis.ipynb
touch src/data/acquisition/acquire_data.py
touch src/data/preprocessing/preprocess_data.py
touch src/features/build_features.py
touch src/models/train_model.py
touch src/visualization/visualize.py
touch sql/queries.sql
touch config/config.yml
touch tests/test_main.py
touch docs/project_overview.md

echo "Created placeholder files"

# Create .gitignore
cat << EOF > .gitignore
# Python
__pycache__/
*.py[cod]
*.so

# Jupyter Notebook
.ipynb_checkpoints

# Virtual Environment
venv/
env/

# Data
*.csv
*.json
*.pkl

# Logs
*.log

# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
EOF

echo "Created .gitignore"

echo "Project structure for $project_name has been created successfully!"