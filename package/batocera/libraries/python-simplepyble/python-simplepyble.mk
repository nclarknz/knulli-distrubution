################################################################################
#
# python-simplesqlite
#
################################################################################

PYTHON_SIMPLEPYBLE_VERSION = 0.7.3
PYTHON_SIMPLEPYBLE_SOURCE = simplepyble-$(PYTHON_SIMPLEPYBLE_VERSION).tar.gz
PYTHON_SIMPLEPYBLE_SITE = https://files.pythonhosted.org/packages/1a/b8/7a1a00dd40b6a4be47fb1ceeba5cbdc21b7022886f4279b72aeb366ec287
PYTHON_SIMPLEPYBLE_SETUP_TYPE = setuptools
PYTHON_SIMPLEPYBLE_LICENSE = MIT
PYTHON_SIMPLEPYBLE_LICENSE_FILES = LICENSE

$(eval $(python-package))
