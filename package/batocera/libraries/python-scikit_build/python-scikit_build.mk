################################################################################
#
# python-scikit-build
#
# https://files.pythonhosted.org/packages/85/05/dc8f28b19f3f06b8a157a47f01f395444f0bae234c4d44674453fa7eeae3/scikit_build-0.17.6.tar.gz
################################################################################

PYTHON_SCIKIT_BUILD_VERSION = 0.17.6
PYTHON_SCIKIT_BUILD_SOURCE = scikit_build-$(PYTHON_SCIKIT_BUILD_VERSION).tar.gz
PYTHON_SCIKIT_BUILD_SITE = https://files.pythonhosted.org/packages/85/05/dc8f28b19f3f06b8a157a47f01f395444f0bae234c4d44674453fa7eeae3
PYTHON_SCIKIT_BUILD_SETUP_TYPE = setuptools
PYTHON_SCIKIT_BUILD_LICENSE = MIT
PYTHON_SCIKIT_BUILD_LICENSE_FILES = LICENSE

$(eval $(python-package))
