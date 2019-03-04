# must run before:
# source ~/mypython/computer_vision/p3env/bin/python3
lib='zemcy'
ve_python=python3
ve_pip=pip3
rm -r dist/
nano setup.py
$ve_python setup.py sdist bdist_wheel
twine upload --repository-url https://test.pypi.org/legacy/ dist/*
sleep 5s
$ve_pip install --upgrade -i https://test.pypi.org/simple/ $lib
#~/mypython/computer_vision/p3env/bin/pip3 install --upgrade -i https://test.pypi.org/simple/ zemcy
