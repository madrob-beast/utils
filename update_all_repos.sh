
EUROBENCH_WORKSPACE_PATH=${EUROBENCH_WORKSPACE_PATH:="$HOME/catkin_ws"}  # set this env var if it is not already set

echo "EUROBENCH_WORKSPACE_PATH: $EUROBENCH_WORKSPACE_PATH"

for i in `find $EUROBENCH_WORKSPACE_PATH -name .git -type d`;  # for all git repo directories in the eurobench workspace, do git pull
    do (
        echo ""
        echo $i
        cd $i/..
        git pull;
    );
done

