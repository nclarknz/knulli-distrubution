################################################################################
#
# python-pybluez2
#
################################################################################

PYTHON_PYBLUEZ2_VERSION = 0.46
PYTHON_PYBLUEZ2_SOURCE = pybluez2-$(PYTHON_PYBLUEZ2_VERSION).tar.gz
PYTHON_PYBLUEZ2_SITE = https://files.pythonhosted.org/packages/dd/f9/980b70642ba99f1cc8cdc9042ad1bb68355bcf5bc68c892ced3bc3360e72
PYTHON_PYBLUEZ2_SETUP_TYPE = setuptools
PYTHON_PYBLUEZ2_LICENSE = MIT
PYTHON_PYBLUEZ2_LICENSE_FILES = LICENSE

$(eval $(python-package))
