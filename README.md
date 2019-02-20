# pomegranate_wheel_builder
A temporary repository to play around with building wheels for the notoriously popular and industry revolutionizing package 'pomegranate'.

## `multibuild` submodule
Currently the `multibuild` submodule points to a fixed commit. It's a good idea to update before re-building:
```
# in pomegranate_wheel_builder
cd multibuild
git checkout master
git pull
cd ..
git commit -am "Updated multibuild commit"
```
TODO: maybe do this automatically?
