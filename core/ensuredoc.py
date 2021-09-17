import os

def is_docker():
    path = '/proc/self/cgroup'
    return (
        os.path.exists('/.dockerenv') or
        os.path.isfile(path) and any('docker' in line for line in open(path))
    )

def print_dock():
    print("checking docker status...");
    if not is_docker():
        return False
    else:
        return True
