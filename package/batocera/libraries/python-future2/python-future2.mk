################################################################################
#
# python-future2
#
################################################################################

PYTHON_FUTURE2_VERSION = 1.0.0
PYTHON_FUTURE2_SOURCE = future-$(PYTHON_FUTURE2_VERSION).tar.gz
PYTHON_FUTURE2_SITE = https://files.pythonhosted.org/packages/a7/b2/4140c69c6a66432916b26158687e821ba631a4c9273c474343badf84d3ba
PYTHON_FUTURE2_SETUP_TYPE = setuptools
PYTHON_FUTURE2_LICENSE = MIT
PYTHON_FUTURE2_LICENSE_FILES = LICENSE

$(eval $(python-package))
