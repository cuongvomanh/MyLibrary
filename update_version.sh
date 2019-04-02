# must run before:
# source ~/mypython/computer_vision/p3env/bin/python3
lib='zemcy'
rm -r dist/
nano setup.py
python setup.py sdist bdist_wheel
twine upload --repository-url https://test.pypi.org/legacy/ dist/*
sleep 5s
pip install --upgrade -i https://test.pypi.org/simple/ $lib
#pip install --upgrade -i https://test.pypi.org/simple/ zemcy
