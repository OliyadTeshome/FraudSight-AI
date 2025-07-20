install:
	pip install -r requirements.txt
lint:
	black src/ tests/ --check
	flake8 src/
	isort src/ --check-only
test:
	pytest tests/
format:
	black src/ tests/
	isort src/
run:
	python src/pipeline.py