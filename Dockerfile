FROM ubuntu:20.04

RUN apt-get update && apt-get install -y --no-install-recommends texlive-latex-extra

COPY cv_files .

CMD ["bash", "entrypoint.sh"]