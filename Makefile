hello:
	echo "This is my first make command"
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
lint:
	pylint --disable = R, C, C0114,C0116, E1120 hello.py
test:
	python -m pytest -vv test_hello.py