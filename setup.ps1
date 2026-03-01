# =========================
# FastAPI Lambda CI/CD Structure
# Root Folder: CICD WORKFLOW TASK
# =========================

$paths = @(
    "app",
    "tests",
    ".github/workflows"
)

$files = @(
    # Root files
    ".gitignore",
    "README.md",
    "requirements.txt",
    "Dockerfile",
    "template.yaml",

    # App
    "app/__init__.py",
    "app/main.py",

    # Tests
    "tests/test_main.py",

    # GitHub Workflows
    ".github/workflows/ci.yml",
    ".github/workflows/deploy-zip.yml",
    ".github/workflows/deploy-container.yml"
)

# Create directories
foreach ($path in $paths) {
    if (!(Test-Path $path)) {
        New-Item -ItemType Directory -Path $path -Force | Out-Null
    }
}

# Create files
foreach ($file in $files) {
    if (!(Test-Path $file)) {
        New-Item -ItemType File -Path $file -Force | Out-Null
    }
}

Write-Host "✅ FastAPI Lambda CI/CD project structure created successfully inside 'CICD WORKFLOW TASK'!"