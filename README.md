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
│   ├── config.py          # Configuration settings (placeholder)
│   └── pipeline.py        # Main data processing pipeline (placeholder)
├── notebooks/             # Jupyter notebooks for analysis
│   ├── 01_eda_preprocessing.ipynb      # ✅ EDA and preprocessing analysis
│   ├── 02_creditcard_preparation.ipynb # ✅ Credit card data preparation
│   ├── 03_fraud_modeling.ipynb         # 📝 Fraud modeling (placeholder)
│   ├── 04_creditcard_fraud_modeling.ipynb # 📝 Credit card fraud modeling (placeholder)
│   └── 05_model_evaluation.ipynb       # 📝 Model evaluation (placeholder)
├── tests/                 # Unit tests (placeholder files)
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

1. **01_eda_preprocessing.ipynb** ✅ - **COMPLETED**: Exploratory data analysis and preprocessing for fraud detection datasets
   - Loads and analyzes Fraud_Data.csv, IpAddress_to_Country.csv, and creditcard.csv
   - Handles missing values and data quality checks
   - Implements data preprocessing steps

2. **02_creditcard_preparation.ipynb** ✅ - **COMPLETED**: Credit card data preparation for modeling
   - Loads and analyzes creditcard.csv dataset
   - Implements train-test split with stratification
   - Prepares data for machine learning models

3. **03_fraud_modeling.ipynb** 📝 - **PLANNED**: Fraud modeling with custom features
4. **04_creditcard_fraud_modeling.ipynb** 📝 - **PLANNED**: Credit card fraud modeling
5. **05_model_evaluation.ipynb** 📝 - **PLANNED**: Model evaluation and performance metrics

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

> **Note**: Test files are currently placeholder files. They will be implemented as the project functionality is developed.

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
- Development environment setup with comprehensive ML stack
- Code quality tools configuration (Black, isort, flake8, mypy, bandit)
- Pre-commit hooks setup and testing
- Documentation and contributing guidelines
- CI/CD pipeline configuration
- **Data Analysis**: EDA and preprocessing notebook (01_eda_preprocessing.ipynb)
- **Data Preparation**: Credit card data preparation notebook (02_creditcard_preparation.ipynb)

### 🚧 **In Progress**
- Core functionality implementation in `src/` modules
- Feature engineering modules
- Model training and evaluation
- SHAP interpretability analysis

### 📝 **Next Steps**
1. Implement data loading and preprocessing utilities in `src/`
2. Develop feature engineering modules
3. Create model training pipeline
4. Add comprehensive testing
5. Complete remaining Jupyter notebooks (03-05)
6. Implement SHAP analysis for model interpretability

### 📊 **Dataset Status**
- **Fraud_Data.csv**: ✅ Loaded and analyzed in EDA notebook
- **IpAddress_to_Country.csv**: ✅ Loaded and analyzed in EDA notebook
- **creditcard.csv**: ✅ Loaded, analyzed, and prepared for modeling

---

**Note**: The project is actively under development. Core functionality in the `src/` directory and remaining notebooks will be implemented as the project progresses.
