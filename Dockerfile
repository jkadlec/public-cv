FROM debian:stretch

RUN apt-get update && apt-get install -y\
    texlive \
    texlive-fonts-recommended \
    texlive-latex-extra

WORKDIR /pdf
ADD jan_kadlec_resume.tex .

CMD pdflatex jan_kadlec_resume.tex

