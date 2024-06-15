
function checkPackageJson() {
    working_dir=$(pwd)
    package_json_filepath="${working_dir}/package.json"
    if [ -f $package_json_filepath ]; then
        return 0
    else
        return 1
    fi
}