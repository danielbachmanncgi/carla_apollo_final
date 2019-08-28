

source ~/carla-apollo/catkin_ws/devel/setup.bash
echo "source catkin_ws ok"

export TEAM_CODE_ROOT=~/carla-apollo/challenge
echo "export TEAM_CODE_ROOT"

export CARLA_APOLLO_ROOT=~/carla-apollo/apollo_launch
echo "export CARLA_APOLLO_ROOT"

echo "--run challenge--"
python $ROOT_SCENARIO_RUNNER/srunner/challenge/challenge_evaluator_routes.py \
 --scenarios=$TEAM_CODE_ROOT/Town02_traffic_scenarios1_3_4.json \
 --agent=$TEAM_CODE_ROOT/ApolloRosAgent.py \
 --filename=$TEAM_CODE_ROOT/results.json \
 --debug=0
  
