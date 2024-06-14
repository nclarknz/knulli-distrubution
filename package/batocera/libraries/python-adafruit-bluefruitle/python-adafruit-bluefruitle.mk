################################################################################
#
# python-adafruit-bluefruitle
#
################################################################################

PYTHON_ADAFRUIT_BLUEFRUITLE_VERSION = 0.1
PYTHON_ADAFRUIT_BLUEFRUITLE_SOURCE = Adafruit_Python_BluefruitLE.tar.gz
PYTHON_ADAFRUIT_BLUEFRUITLE_SITE = https://github.com/nclarknz/adafruitbluefruitle/releases/download/Publish
PYTHON_ADAFRUIT_BLUEFRUITLE_SETUP_TYPE = setuptools
PYTHON_ADAFRUIT_BLUEFRUITLE_LICENSE = MIT
PYTHON_ADAFRUIT_BLUEFRUITLE_LICENSE_FILES = LICENSE

$(eval $(python-package))
