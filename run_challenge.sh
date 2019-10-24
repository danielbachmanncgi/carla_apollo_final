
source ~/carla/carla-apollo/catkin_ws/devel/setup.bash
echo "source catkin_ws ok"

export TEAM_CODE_ROOT=~/carla/carla-apollo/challenge
echo "export TEAM_CODE_ROOT"

export CARLA_APOLLO_ROOT=~/carla/carla-apollo/apollo_launch
echo "export CARLA_APOLLO_ROOT"

#loop for the total runs of the assessment
for i in {1..5} 
do
    #loop for the 6 different weather conditions
    for k in {1..6} 
    do
        #declare route count variable
        declare -i route=1
        #loop for the 5 different routes
        for j in {1..5} 
        do
            export ROUTE_COUNT=$route
            echo "route -- " $ROUTE_COUNT
            sleep 2
            echo "--change weather--"
            #publish weather change request
            rostopic pub -1 /carla_weather std_msgs/String "change"
            #publish route number
            rostopic pub -1 /carla_route std_msgs/Int32 $ROUTE_COUNT

            echo "--run challenge--"
            #run challenge evaluator script with the current route
            python $ROOT_SCENARIO_RUNNER/srunner/challenge/challenge_evaluator_routes.py \
            --scenarios=$TEAM_CODE_ROOT/Town02_traffic_scenarios1_3_4.json \
            --routes=$TEAM_CODE_ROOT/routes/Town02_route_$ROUTE_COUNT.xml \
            --agent=$TEAM_CODE_ROOT/ApolloRosAgent.py \
            --filename=/home/lukas/carla/carla-apollo/results/results.json \
            --debug=1
            
            
            #publish end-of-route message
            rostopic pub -1 /end_route std_msgs/String "end"

            echo "--save results--"
            #read results from json file into csv file
            python ~/carla/carla-apollo/results/read_results.py
            
            #set route count to the next route
            declare -i route=$route+1

            sleep 5
        done
    done
done
