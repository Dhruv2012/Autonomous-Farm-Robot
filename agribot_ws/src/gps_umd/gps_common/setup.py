from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

setup_args = generate_distutils_setup(
    packages=['gps_common'],
    scripts=[],
    package_dir={'': 'src'},
    requires=['sensor_msgs'])

setup(**setup_args)
