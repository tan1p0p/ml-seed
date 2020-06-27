build:
	docker build . -t ambiguous-segmentation
run:
	docker run -v `pwd`:/workspace -it ambiguous-segmentation
train:
	python scripts/main.py
debug:
	pytest scripts/main.py -s --pdb
