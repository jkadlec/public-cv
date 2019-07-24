docker-build:
	docker build -t jk/cv .

build-pdf: docker-build
	docker run -v $$PWD/jan_kadlec_resume.pdf:/pdf/jan_kadlec_resume.pdf --rm -it jk/cv
