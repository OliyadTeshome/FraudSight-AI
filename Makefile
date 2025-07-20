.PHONY: install install-dev lint test format clean run help

# Default target
help:
	@echo "Available commands:"
	@echo "  install     - Install dependencies"
	@echo "  lint        - Run linting checks (black, flake8, isort)"
	@echo "  test        - Run tests"
	@echo "  format      - Format code with black and isort"
	@echo "  clean       - Clean build artifacts and cache"
	@echo "  run         - Run the main pipeline"
	@echo "  help        - Show this help message"

# Install dependencies
install:
	pip install -r requirements.txt

# Run linting checks
lint:
	@echo "Running black check..."
	black src/ tests/ --check
	@echo "Running flake8 check..."
	flake8 src/ tests/
	@echo "Running isort check..."
	isort src/ tests/ --check-only
	@echo "All linting checks passed!"

# Run tests
test:
	pytest tests/ -v

# Run tests with coverage
test-cov:
	pytest tests/ --cov=src --cov-report=html --cov-report=term-missing

# Format code
format:
	@echo "Formatting with black..."
	black src/ tests/
	@echo "Sorting imports with isort..."
	isort src/ tests/
	@echo "Code formatting complete!"

# Clean build artifacts and cache
clean:
	@echo "Cleaning build artifacts..."
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info/
	rm -rf .pytest_cache/
	rm -rf .coverage
	rm -rf htmlcov/
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	@echo "Cleanup complete!"

# Run the main pipeline
run:
	python src/pipeline.py

# Install pre-commit hooks
setup-hooks:
	python -m pre_commit install

# Run pre-commit on all files
pre-commit-all:
	python -m pre_commit run --all-files
