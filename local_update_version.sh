# must run before:
# source ~/mypython/computer_vision/p3env/bin/python3
lib='zemcy'
ve_python=python
ve_pip=pip
rm -r dist/
nano setup.py
$ve_python setup.py sdist bdist_wheel
$ve_pip install $(find ./dist -type f -name "*.whl")
#twine upload --repository-url https://test.pypi.org/legacy/ dist/*
#$ve_pip install --upgrade -i https://test.pypi.org/simple/ $lib
#~/mypython/computer_vision/p3env/bin/pip3 install --upgrade -i https://test.pypi.org/simple/ zemcy
