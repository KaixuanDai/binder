FROM darribas/gds_py:4.1

RUN pip install -U geopandas

# Add notebooks
RUN rm -R work/
COPY ./README.md ${HOME}/README.md
COPY ./notebooks ${HOME}/notebooks
# Fix permissions
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}