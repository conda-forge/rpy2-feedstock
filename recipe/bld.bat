set DISTUTILS_DEBUG=1
"%PYTHON%" -c "import setuptools,distutils;print(list(distutils.dist.Distribution()._gen_paths()))"

"%PYTHON%" -m pip install . --no-deps -vv
if errorlevel 1 exit 1
