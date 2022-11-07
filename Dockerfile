FROM ajevnisek/tau-base-docker:latest

COPY environment.yml .
RUN conda update -y conda && \
    conda env update --file environment.yml --name base

# clone repo and cd to a directory where the main is:
COPY clone_repo_and_run_python_scripts.sh .
ENTRYPOINT ["bash", "clone_repo_and_run_python_scripts.sh"]