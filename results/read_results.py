#!/usr/bin/env python

import json
import csv

JSON_FILE_PATH = '/home/lukas/carla/carla-apollo/results/results.json'
CSV_FILE_PATH = '/home/lukas/carla/carla-apollo/results/total_results.csv'

def main():
    """
    Load results for previous route from json file and append line to the total_results.csv file
    
    """
    with open(JSON_FILE_PATH) as json_file:

        data = json.load(json_file)

    infraction_points = data['result'][0]['accuracies']['infraction points']
    avg_route_points = data['result'][0]['accuracies']['avg. route points']
    total_avg = data['result'][0]['accuracies']['total avg.']
    weather = data['result'][0]['accuracies']['weather']
    infractions = data['stderr']

    row = ['apollo', infraction_points, avg_route_points, total_avg, weather ,infractions]

    with open(CSV_FILE_PATH, 'a') as csvFile:
        writer = csv.writer(csvFile)
        writer.writerow(row)
    csvFile.close()



if __name__ == '__main__':
    main()
