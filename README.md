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
│   ├── 04_fraud_model_creditcard.ipynb # ✅ Credit card fraud modeling
│   ├── 05_model_evaluation.ipynb       # ✅ Model evaluation and performance metrics
│   └── 06_model_explainability.ipynb   # ✅ SHAP model interpretability
├── tests/                 # Unit tests (placeholder files)
│   ├── test_feature_engineering.py
│   ├── test_model_training.py
│   ├── test_preprocessing.py
│   └── test_shap.py
├── data/                  # Data storage
│   ├── raw/              # Original datasets
│   │   ├── Fraud_Data.csv
│   │   ├── IpAddress_to_Country.csv
│   │   └── creditcard.csv
│   ├── processed/        # Processed datasets
│   │   ├── train_ready.csv
│   │   ├── test_ready.csv
│   │   ├── creditcard_train_ready.csv
│   │   └── creditcard_test_ready.csv
│   └── models/           # Trained models
│       ├── logistic_regression_model.pkl
│       └── random_forest_model.pkl
├── reports/               # Generated reports and visualizations
│   ├── figures/
│   ├── plots/            # Model performance plots
│   │   ├── confusion matrices
│   │   ├── ROC curves
│   │   └── PR curves
│   └── SHARP_plots/      # SHAP interpretability plots
│       ├── summary plots
│       └── force plots
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

### ✅ **COMPLETED TASKS**

#### **Task 1 - Data Analysis and Preprocessing** ✅
1. **01_eda_preprocessing.ipynb** - **COMPLETED**: Comprehensive data analysis and preprocessing
   - ✅ **Missing Values Handling**: Analyzed and handled missing values in all datasets
   - ✅ **Data Cleaning**: Removed duplicates and corrected data types
   - ✅ **Exploratory Data Analysis**:
     - Univariate analysis for all features
     - Bivariate analysis for feature relationships
   - ✅ **Dataset Merging**: Merged Fraud_Data.csv with IpAddress_to_Country.csv for geolocation analysis
   - ✅ **Feature Engineering**:
     - Transaction frequency and velocity features
     - Time-based features (hour_of_day, day_of_week)
     - time_since_signup: Duration between signup_time and purchase_time
   - ✅ **Data Transformation**:
     - Class imbalance handling with SMOTE oversampling
     - Feature normalization and scaling (StandardScaler)
     - Categorical feature encoding (One-Hot Encoding)

2. **02_creditcard_preparation.ipynb** - **COMPLETED**: Credit card data preparation
   - ✅ Loaded and analyzed creditcard.csv dataset
   - ✅ Implemented train-test split with stratification
   - ✅ Prepared data for machine learning models

#### **Task 2 - Model Building and Training** ✅
3. **03_fraud_model.ipynb** - **COMPLETED**: Fraud modeling with custom features
   - ✅ **Data Preparation**: Separated features and target variables
   - ✅ **Train-Test Split**: Proper data splitting for model evaluation
   - ✅ **Model Selection**: Implemented two models as required:
     - Logistic Regression (baseline, interpretable model)
     - Random Forest (powerful ensemble model)
   - ✅ **Model Training**: Trained models on Fraud_Data.csv dataset
   - ✅ **Model Evaluation**: Used appropriate metrics for imbalanced data

4. **04_fraud_model_creditcard.ipynb** - **COMPLETED**: Credit card fraud modeling
   - ✅ Applied same modeling approach to creditcard.csv dataset
   - ✅ Trained and evaluated both Logistic Regression and Random Forest models

#### **Task 3 - Model Evaluation** ✅
5. **05_model_evaluation.ipynb** - **COMPLETED**: Comprehensive model evaluation
   - ✅ **Performance Metrics**:
     - AUC-PR (Average Precision Score)
     - F1-Score
     - Confusion Matrix
     - ROC curves
   - ✅ **Model Comparison**: Clear comparison between Logistic Regression and Random Forest
   - ✅ **Best Model Selection**: Justified model selection based on performance metrics
   - ✅ **Visualization**: Generated comprehensive plots for model performance

#### **Task 4 - Model Explainability** ✅
6. **06_model_explainability.ipynb** - **COMPLETED**: SHAP model interpretability
   - ✅ **SHAP Analysis**: Applied SHAP (Shapley Additive exPlanations) to best-performing models
   - ✅ **Global Feature Importance**: Summary plots showing key drivers of fraud
   - ✅ **Local Feature Importance**: Force plots for individual predictions
   - ✅ **Model Interpretation**: Comprehensive analysis of fraud detection patterns

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

- **Classification Metrics**: Precision, recall, F1-score for both datasets
- **ROC Curves and AUC Scores**: Performance visualization for imbalanced data
- **Confusion Matrices**: Detailed classification results
- **SHAP Feature Importance**: Model interpretability analysis
- **Model Comparison**: Clear performance comparison between models

### Key Findings

- **Fraud Detection Models**: Successfully implemented and evaluated on both Fraud_Data.csv and creditcard.csv datasets
- **Model Performance**: Random Forest generally outperforms Logistic Regression for fraud detection
- **Feature Importance**: SHAP analysis reveals key fraud indicators and patterns
- **Data Quality**: Comprehensive preprocessing ensures high-quality training data

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **10 Academy** for the project framework and guidance
- **Open Source Community** for the excellent libraries and tools used in this project
- **Contributors** who have helped improve and maintain this codebase

## 📞 Contact

For questions, issues, or contributions, please:

- Open an issue on GitHub
- Contact the development team
- Check the project documentation

---

**FraudSight AI** - Making fraud detection more intelligent and interpretable through advanced machine learning techniques.
