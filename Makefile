setup:
	python3 -m venv ~/.flask_app

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
    #python -m pytest -vv --cov=myrepolib tests/*.py
    #python -m pytest --nbval notebook.ipynb
    
lint:
	hadolint Dockerfile
	# pylint --disable=R,C,W1203 flask_app/**.py
	flake8 --ignore E24,W504 flask_app/**.py

all: install lint test