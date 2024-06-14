################################################################################
#
# python3-cython
#
################################################################################
# https://files.pythonhosted.org/packages/d5/f7/2fdd9205a2eedee7d9b0abbf15944a1151eb943001dbdc5233b1d1cfc34e/Cython-3.0.10.tar.gz
PYTHON3_CYTHON_VERSION = 3.0.10
PYTHON3_CYTHON_SOURCE = Cython-$(PYTHON_CYTHON_VERSION).tar.gz
PYTHON3_CYTHON_SITE = https://files.pythonhosted.org/packages/d5/f7/2fdd9205a2eedee7d9b0abbf15944a1151eb943001dbdc5233b1d1cfc34e
PYTHON3_CYTHON_SETUP_TYPE = setuptools
PYTHON3_CYTHON_LICENSE = Apache-2.0
PYTHON3_CYTHON_LICENSE_FILES = COPYING.txt LICENSE.txt

$(eval $(python-package))
