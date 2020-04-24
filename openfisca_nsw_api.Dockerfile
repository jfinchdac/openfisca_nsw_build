FROM python:3.7

COPY . /openfisca_nsw_api

# Building swagger API dependencies created by the openfisca_nsw org
WORKDIR /openfisca_nsw_api/openfisca_nsw_base
RUN python setup.py install

WORKDIR /openfisca_nsw_api/openfisca_nsw_rules_kids_vouchers
RUN python setup.py install

WORKDIR /openfisca_nsw_api/openfisca_nsw_ess_nabers
RUN python setup.py install

WORKDIR /openfisca_nsw_api/openfisca_nsw_community_gaming
RUN python setup.py install

WORKDIR /openfisca_nsw_api/openfisca_nsw_api
RUN python setup.py install


