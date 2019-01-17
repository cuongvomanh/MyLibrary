# must run before:
# source ~/mypython/computer_vision/p3env/bin/python3
lib='zemcy'
p3env_python3=~/mypython/computer_vision/p3env/bin/python3
p3env_pip3=~/mypython/computer_vision/p3env/bin/pip3
rm -r dist/
nano setup.py
$p3env_python3 setup.py sdist bdist_wheel
twine upload --repository-url https://test.pypi.org/legacy/ dist/*
$p3env_pip3 install --upgrade -i https://test.pypi.org/simple/ $lib
#~/mypython/computer_vision/p3env/bin/pip3 install --upgrade -i https://test.pypi.org/simple/ zemcy