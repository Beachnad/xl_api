test:
	echo "Hello"

requirements:
	poetry export -f requirements.txt --without-hashes -o requirements.txt

build: requirements
	poetry run pip install . -r requirements.txt -t package_tmp
	cd package_tmp
	find . -name "*.pyc" -delete
	zip -r ../"$param_package_name" .
