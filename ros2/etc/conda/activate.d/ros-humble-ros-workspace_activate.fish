if [ "$CONDA_BUILD" = "1" ]; and [ "$target_platform" != "$build_platform" ]
    echo "Not activating ROS when cross-compiling";
else
    bass source $CONDA_PREFIX/setup.sh
end

set -x ROS_OS_OVERRIDE "conda:linux"
set -x ROS_ETC_DIR $CONDA_PREFIX/etc/ros
set -x AMENT_PREFIX_PATH $CONDA_PREFIX

set -x ROS_BACKUP_PYTHONPATH $PYTHONPATH
set -x ROS_BACKUP_LD_LIBRARY_PATH $LD_LIBRARY_PATH
