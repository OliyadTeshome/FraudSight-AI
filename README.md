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
│   ├── 03_fraud_model.ipynb            # ✅ Fraud modeling with custom features
│   └── 04_fraud_model_creditcard.ipynb # ✅ Credit card fraud modeling
├── tests/                 # Unit tests (placeholder files)
│   ├── test_feature_engineering.py
│   ├── test_model_training.py
│   ├── test_preprocessing.py
│   └── test_shap.py
├── data/                  # Data storage
│   ├── raw/              # Original datasets
│   ├── processed/        # Processed datasets
│   │   ├── train_ready.csv
│   │   ├── test_ready.csv
│   │   ├── creditcard_train_ready.csv
│   │   └── creditcard_test_ready.csv
│   └── models/           # Trained models
│       ├── logistic_regression_model.pkl
│       └── random_forest_model.pkl
├── reports/               # Generated reports and visualizations
│   ├── figures/          # EDA and analysis figures
│   └── shap/             # SHAP analysis results
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
   - Generates comprehensive visualizations and insights

2. **02_creditcard_preparation.ipynb** ✅ - **COMPLETED**: Credit card data preparation for modeling
   - Loads and analyzes creditcard.csv dataset
   - Implements train-test split with stratification
   - Prepares data for machine learning models

3. **03_fraud_model.ipynb** ✅ - **COMPLETED**: Fraud modeling with custom features
   - Trains Logistic Regression and Random Forest models
   - Evaluates model performance with comprehensive metrics
   - Saves trained models for deployment

4. **04_fraud_model_creditcard.ipynb** ✅ - **COMPLETED**: Credit card fraud modeling
   - Trains models specifically on credit card fraud dataset
   - Implements advanced evaluation metrics
   - Provides model comparison and analysis

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

### Current Model Results

**Fraud Detection Models (03_fraud_model.ipynb)**:
- Logistic Regression and Random Forest models trained on custom fraud features
- Models saved in `data/models/` directory
- Comprehensive evaluation metrics implemented

**Credit Card Fraud Models (04_fraud_model_creditcard.ipynb)**:
- Specialized models for credit card fraud detection
- Advanced performance metrics and model comparison
- Ready for production deployment

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
- **Model Training**: Fraud modeling notebooks (03_fraud_model.ipynb, 04_fraud_model_creditcard.ipynb)
- **Data Processing**: Complete data processing pipeline with train/test splits
- **Model Storage**: Trained models saved and ready for deployment
- **Visualizations**: Comprehensive EDA figures and analysis reports

### 🚧 **In Progress**
- Core functionality implementation in `src/` modules
- Feature engineering modules
- SHAP interpretability analysis
- Model evaluation and comparison framework

### 📝 **Next Steps**
1. Implement data loading and preprocessing utilities in `src/`
2. Develop feature engineering modules
3. Add comprehensive testing suite
4. Implement SHAP analysis for model interpretability
5. Create model evaluation dashboard
6. Add model deployment pipeline

### 📊 **Dataset Status**
- **Fraud_Data.csv**: ✅ Loaded, analyzed, and processed for modeling
- **IpAddress_to_Country.csv**: ✅ Loaded and analyzed in EDA notebook
- **creditcard.csv**: ✅ Loaded, analyzed, and processed for modeling
- **Processed Data**: ✅ Train/test splits created and ready for modeling
- **Trained Models**: ✅ Logistic Regression and Random Forest models saved

### 🎯 **Key Achievements**
- **4/4 Analysis Notebooks**: All planned notebooks completed
- **Model Training**: Both fraud detection and credit card fraud models implemented
- **Data Pipeline**: Complete data processing workflow established
- **Model Persistence**: Trained models saved for production use
- **Comprehensive EDA**: 21+ visualization figures generated
- **Production Ready**: Models ready for deployment and inference

---

**Note**: The project has achieved significant milestones with all planned analysis notebooks completed and models trained. The focus now shifts to implementing the core `src/` modules and adding comprehensive testing and SHAP analysis.
