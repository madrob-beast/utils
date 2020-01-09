END_COLOR="\e[0m"
BLUE="\e[34m"

EUROBENCH_WORKSPACE_PATH=${EUROBENCH_WORKSPACE_PATH:="$HOME/catkin_ws"}  # set this env var if it is not already set

echo -e "${BLUE}EUROBENCH_WORKSPACE_PATH: $EUROBENCH_WORKSPACE_PATH${END_COLOR}"

cd $EUROBENCH_WORKSPACE_PATH/src

for i in `cat $EUROBENCH_WORKSPACE_PATH/src/utils/madrob_repos_list`;  # for all git repo directories in the eurobench workspace, do git pull
    do (
        echo ""
        echo -e "${BLUE}Cloning $i${END_COLOR}"
        git clone $i;
    );
done


