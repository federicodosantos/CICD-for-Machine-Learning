install:
	pip install --upgrade pip &&\
		pip install -r app/requirements.txt

format:
	black *.py

train:
	python train.py

eval:
	echo "## Model Metrics" > report.md
	cat ./results/metrics.txt

	echo '\n## Confusion Matrix Plot' >> report.md
	echo '![Confusion Matrix](./results/model_results.png)' >> report.md

	cml comment create report.md