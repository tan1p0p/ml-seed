tag = your-repo-name

build:
	docker build . -t $(tag)
run:
	docker run -v `pwd`:/workspace -it $(tag)
train:
	python scripts/main.py
debug:
	pytest scripts/main.py -s --pdb
