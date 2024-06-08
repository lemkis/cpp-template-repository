python3.12 -m venv .venv
source .venv/bin/activate &&\
pip install pre-commit cpplint &&\
pre-commit install &&\
pre-commit autoupdate --bleeding-edge


