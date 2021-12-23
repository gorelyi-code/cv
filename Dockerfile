FROM ubuntu:18.04

RUN apt-get update && apt-get install --yes --no-install-recommends \
    texlive-fonts-recommended \ 
    texlive-generic-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    dvipng \
    texlive-latex-recommended \
    texlive-base \
    texlive-pictures \
    texlive-lang-cyrillic \
    texlive-science \
    cm-super \
    texlive-generic-extra

COPY cv_files/entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]