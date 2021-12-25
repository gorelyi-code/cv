FROM ubuntu:18.04

RUN apt-get update && apt-get install --yes --no-install-recommends \
    texlive-fonts-recommended \ 
    texlive-generic-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-latex-recommended \
    texlive-base \
    texlive-pictures \
    texlive-bibtex-extra biber

COPY cv_files .

CMD ["bash", "entrypoint.sh"]