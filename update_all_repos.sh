END_COLOR="\e[0m"
BLUE="\e[34m"

EUROBENCH_WORKSPACE_PATH=${EUROBENCH_WORKSPACE_PATH:="$HOME/catkin_ws"}  # set this env var if it is not already set

echo -e "${BLUE}EUROBENCH_WORKSPACE_PATH: $EUROBENCH_WORKSPACE_PATH${END_COLOR}"

for i in `find $EUROBENCH_WORKSPACE_PATH -name .git -type d`;  # for all git repo directories in the eurobench workspace, do git pull
    do (
        cd $i/..
        echo ""
        echo -e "${BLUE}Pulling in `pwd`${END_COLOR}"
        git pull;
    );
done

