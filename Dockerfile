FROM johanngb/rep-int:2021v1
RUN R -e 'install.packages("ruv")'
RUN R -e 'install.packages("EnvStats")'
COPY --chown=rep:rep . /home/rep
