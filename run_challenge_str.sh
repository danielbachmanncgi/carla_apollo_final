
source ~/carla/carla-apollo/catkin_ws/devel/setup.bash
echo "source catkin_ws ok"

export TEAM_CODE_ROOT=~/carla/carla-apollo/challenge
echo "export TEAM_CODE_ROOT"

export CARLA_APOLLO_ROOT=~/carla/carla-apollo/apollo_launch
echo "export CARLA_APOLLO_ROOT"

for i in {1..5}
do
    for k in {1..6}
    do
        declare -i route=2
        for j in {1..5}
        do
            export ROUTE_COUNT=$route
            echo "route -- " $ROUTE_COUNT
            sleep 2
            echo "--change weather--"
            rostopic pub -1 /carla_weather std_msgs/String "change"
            rostopic pub -1 /carla_route std_msgs/Int32 $ROUTE_COUNT

            echo "--run challenge--"
            python $ROOT_SCENARIO_RUNNER/srunner/challenge/challenge_evaluator_routes.py \
            --scenarios=$TEAM_CODE_ROOT/Town02_traffic_scenarios1_3_4.json \
            --routes=$TEAM_CODE_ROOT/routes_str/Town02_routes_str_0$ROUTE_COUNT.xml \
            --agent=$TEAM_CODE_ROOT/ApolloRosAgent.py \
            --filename=/home/lukas/carla/carla-apollo/results/results.json \
            --debug=1
            
            

            rostopic pub -1 /end_route std_msgs/String "end"

            echo "--save results--"
            python ~/carla/carla-apollo/results/read_results.py
            declare -i route=$route+1

            sleep 5
        done
    done
done
