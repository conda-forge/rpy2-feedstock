set "DISTUTILS_DEBUG=1"
del setup.cfg

"%PYTHON%" -c "import setuptools,distutils,logging;logging.basicConfig(level=logging.DEBUG);list(distutils.dist.Distribution().find_config_files())"


"%PYTHON%" -m pip install . --no-deps -vv
if errorlevel 1 exit 1
