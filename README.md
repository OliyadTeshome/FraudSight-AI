# FraudSight AI

A comprehensive machine learning project for fraud detection using advanced analytics and SHAP interpretability.

## 🚀 Features

- **Advanced Fraud Detection**: Machine learning models for detecting fraudulent transactions
- **Feature Engineering**: Time-based and transaction-specific feature extraction
- **Model Interpretability**: SHAP analysis for model explainability
- **Comprehensive Testing**: Unit tests and integration tests
- **Code Quality**: Automated linting, formatting, and pre-commit hooks
- **CI/CD Pipeline**: GitHub Actions for continuous integration

## 📋 Requirements

- Python 3.8 or higher
- See `requirements.txt` for detailed dependencies

## 🛠️ Installation

### Development Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-org/FraudSight-AI.git
   cd FraudSight-AI
   ```

2. **Create a virtual environment**:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**:
   ```bash
   # Install all dependencies
   make install

   # Or install directly with pip
   pip install -r requirements.txt
   ```

4. **Setup pre-commit hooks** (optional but recommended):
   ```bash
   make setup-hooks
   ```

### Prerequisites

- **Python 3.8+**: The project requires Python 3.8 or higher
- **Git**: For version control and cloning the repository
- **Virtual Environment**: Recommended for dependency isolation

## 🏃‍♂️ Quick Start

### Running the Pipeline

```bash
make run
```

### Development Commands

```bash
# Format code
make format

# Run linting checks
make lint

# Run tests
make test

# Run tests with coverage
make test-cov

# Clean build artifacts
make clean

# Show all available commands
make help
```

## 📁 Project Structure

```
FraudSight-AI/
├── src/                    # Source code
│   ├── __init__.py
│   ├── config.py          # Configuration settings
│   ├── pipeline.py        # Main data processing pipeline
│   ├── features/          # Feature engineering modules
│   │   ├── __init__.py
│   │   ├── time_features.py
│   │   └── transaction_features.py
│   ├── models/            # Machine learning models
│   │   ├── __init__.py
│   │   ├── train_model.py
│   │   ├── evaluate_model.py
│   │   └── shap_analysis.py
│   └── utils/             # Utility functions
│       ├── __init__.py
│       ├── data_loader.py
│       ├── preprocess.py
│       ├── visualization.py
│       └── ip_geolocation.py
├── notebooks/             # Jupyter notebooks for analysis
│   ├── 01_eda_fraud_data.ipynb
│   ├── 02_eda_creditcard.ipynb
│   ├── 03_feature_engineering.ipynb
│   ├── 04_data_transformation.ipynb
│   ├── 05_model_training.ipynb
│   ├── 06_model_evaluation.ipynb
│   └── 07_shap_interpretability.ipynb
├── tests/                 # Unit tests
│   ├── test_feature_engineering.py
│   ├── test_model_training.py
│   ├── test_preprocessing.py
│   └── test_shap.py
├── data/                  # Data storage
├── reports/               # Generated reports and visualizations
│   ├── figures/
│   └── shap/
├── ci/                    # CI/CD configuration
│   └── github/
│       └── workflows/
│           └── ci.yaml
├── requirements.txt       # Python dependencies
├── pyproject.toml         # Tool configurations
├── Makefile              # Build automation
├── .gitignore            # Git ignore rules
├── .pre-commit-config.yaml # Pre-commit hooks
├── CONTRIBUTING.md        # Contributing guidelines
├── LICENSE               # MIT License
└── README.md             # Project documentation
```

## 📊 Analysis Workflow

The project includes a complete analysis workflow through Jupyter notebooks:

1. **01_eda_fraud_data.ipynb** - Exploratory data analysis for fraud data
2. **02_eda_creditcard.ipynb** - Exploratory data analysis for credit card data
3. **03_feature_engineering.ipynb** - Feature engineering process
4. **04_data_transformation.ipynb** - Data transformation and preprocessing
5. **05_model_training.ipynb** - Model training and hyperparameter tuning
6. **06_model_evaluation.ipynb** - Model evaluation and performance metrics
7. **07_shap_interpretability.ipynb** - SHAP analysis for model interpretability

> **Note**: The notebook files are currently empty placeholders. They will be populated with actual analysis code as the project progresses.

## 🧪 Testing

Run the test suite:

```bash
# Run all tests
make test

# Run tests with coverage
make test-cov

# Run specific test file
pytest tests/test_feature_engineering.py -v
```

> **Note**: Test files are currently empty placeholders. They will be implemented as the project functionality is developed.

## 🔧 Development

### Code Quality

The project uses several tools to maintain code quality:

- **Black**: Code formatting
- **isort**: Import sorting
- **flake8**: Linting
- **mypy**: Type checking
- **bandit**: Security analysis
- **pre-commit**: Git hooks for quality checks

### Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes
4. Run quality checks: `make lint && make test`
5. Commit your changes: `git commit -m 'Add feature'`
6. Push to the branch: `git push origin feature-name`
7. Submit a pull request

## 📈 Model Performance

The project includes comprehensive model evaluation with:

- Classification metrics (precision, recall, F1-score)
- ROC curves and AUC scores
- Confusion matrices
- SHAP feature importance analysis
- Model interpretability visualizations

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- 10 Academy for the project framework
- The open-source community for the tools and libraries used

## 📞 Support

For questions and support, please open an issue on GitHub or contact the development team.

## 📋 Current Status

### ✅ **Completed**
- Project structure and scaffolding
- Dependency management with `requirements.txt`
- Development environment setup
- Code quality tools configuration
- Pre-commit hooks setup and testing
- Documentation and contributing guidelines
- CI/CD pipeline configuration

### 🚧 **In Progress**
- Core functionality implementation
- Feature engineering modules
- Model training and evaluation
- SHAP interpretability analysis

### 📝 **Next Steps**
1. Implement data loading and preprocessing utilities
2. Develop feature engineering modules
3. Create model training pipeline
4. Add comprehensive testing
5. Populate Jupyter notebooks with analysis

---

**Note**: This is a development project. The placeholder files will be implemented with actual functionality as the project progresses.
