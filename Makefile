install:
	pip install --upgrade pip &&\
		pip install -r requirments.txt

install-azur:
	pip install --upgrade pip &&\
		pip install -r requirments-azur.txt
		
format:
	black *.py
	
lint:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv --cov=hllo test_hollo.py
	
all: install lint test