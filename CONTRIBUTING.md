# Contributing to FraudSight AI

Thank you for your interest in contributing to FraudSight AI! This document provides guidelines and information for contributors.

## 🤝 How to Contribute

### Reporting Issues

Before creating an issue, please:

1. Check if the issue has already been reported
2. Use the appropriate issue template
3. Provide detailed information including:
   - Steps to reproduce
   - Expected vs actual behavior
   - Environment details (OS, Python version, etc.)
   - Error messages or logs

### Feature Requests

When requesting new features:

1. Describe the feature clearly
2. Explain the use case and benefits
3. Provide examples if possible
4. Consider implementation complexity

### Code Contributions

#### Getting Started

1. **Fork the repository**
2. **Clone your fork**:
   ```bash
   git clone https://github.com/your-username/FraudSight-AI.git
   cd FraudSight-AI
   ```

3. **Set up development environment**:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   make install-dev
   make setup-hooks
   ```

4. **Create a feature branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```

#### Development Workflow

1. **Make your changes** following the coding standards below
2. **Write tests** for new functionality
3. **Update documentation** if needed
4. **Run quality checks**:
   ```bash
   make lint
   make test
   make test-cov
   ```

5. **Commit your changes**:
   ```bash
   git add .
   git commit -m "feat: add new feature description"
   ```

6. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```

7. **Create a pull request** with a clear description

## 📝 Coding Standards

### Code Style

- Follow [PEP 8](https://www.python.org/dev/peps/pep-0008/) guidelines
- Use Black for code formatting (line length: 88)
- Use isort for import sorting
- Follow type hints where possible

### Documentation

- Add docstrings to all functions and classes
- Use Google-style docstrings
- Update README.md for user-facing changes
- Add inline comments for complex logic

### Testing

- Write unit tests for new functionality
- Maintain test coverage above 80%
- Use descriptive test names
- Test both success and failure cases

### Commit Messages

Use conventional commit format:

```
type(scope): description

[optional body]

[optional footer]
```

Types:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

Examples:
```
feat(models): add XGBoost model implementation
fix(data_loader): handle missing data gracefully
docs(readme): update installation instructions
```

## 🧪 Testing Guidelines

### Running Tests

```bash
# Run all tests
make test

# Run with coverage
make test-cov

# Run specific test file
pytest tests/test_feature_engineering.py -v

# Run tests with specific markers
pytest -m "not slow"  # Skip slow tests
```

### Writing Tests

- Test one thing per test function
- Use descriptive test names
- Use fixtures for common setup
- Mock external dependencies
- Test edge cases and error conditions

### Test Structure

```python
def test_function_name_expected_behavior():
    """Test description."""
    # Arrange
    input_data = ...
    expected_output = ...

    # Act
    result = function_to_test(input_data)

    # Assert
    assert result == expected_output
```

## 🔍 Code Review Process

1. **Automated Checks**: All PRs must pass:
   - Linting (black, flake8, isort)
   - Type checking (mypy)
   - Security analysis (bandit)
   - Tests

2. **Manual Review**: At least one maintainer must approve

3. **Review Criteria**:
   - Code quality and style
   - Test coverage
   - Documentation
   - Performance implications
   - Security considerations

## 🚀 Release Process

### Versioning

We use [Semantic Versioning](https://semver.org/):
- `MAJOR.MINOR.PATCH`
- Major: Breaking changes
- Minor: New features (backward compatible)
- Patch: Bug fixes (backward compatible)

### Release Checklist

- [ ] All tests passing
- [ ] Documentation updated
- [ ] Version bumped in `pyproject.toml`
- [ ] Changelog updated
- [ ] Release notes prepared

## 📋 Issue Templates

### Bug Report

```markdown
## Bug Description
Brief description of the bug

## Steps to Reproduce
1. Step 1
2. Step 2
3. Step 3

## Expected Behavior
What should happen

## Actual Behavior
What actually happens

## Environment
- OS: [e.g., Windows 10, macOS 12.0]
- Python Version: [e.g., 3.9.7]
- Package Version: [e.g., 0.1.0]

## Additional Information
Any other relevant information
```

### Feature Request

```markdown
## Feature Description
Brief description of the feature

## Use Case
Why this feature is needed

## Proposed Solution
How you think it should be implemented

## Alternatives Considered
Other approaches you considered

## Additional Information
Any other relevant information
```

## 🤝 Community Guidelines

- Be respectful and inclusive
- Help others learn and grow
- Provide constructive feedback
- Follow the project's code of conduct

## 📞 Getting Help

- Check the [README.md](README.md) for basic information
- Search existing issues and discussions
- Open an issue for bugs or feature requests
- Join our community discussions

Thank you for contributing to FraudSight AI! 🎉
