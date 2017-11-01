# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    :
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    python --version
    echo "Running tests from cloned repository"
    pwd
    BASE_DIR=$(dirname "${BASH_SOURCE[0]}")
    nosetests --no-path-adjustment $BASE_DIR/../pomegranate/tests
}

