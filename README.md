

# Highest Performing Airlines 
## Ivestigating Air tracffic at San Francisco International Airport (SFO). 
### Tomasz Olewicz, Alex Lamp, Irene Kang, Joe Chun


## Segment 1-2 Roles
Alex Lamp - Git Hub   <br>
Irene Kang - Machine Learning Model <br>
Tomasz Olewicz - Data Base/ Machine Learning Model <br>
Joe Chun - DashBoard/Presentation  <br>

## Communication Protocols

Our group collaborates using two methods of telecommunication. Our primary method of communication, Zoom video conferencing, and our secondary method, Slack direct messaging. Twice a week, on Tuesday and Thursday nights, we work together in breakout sessions over Zoom. On Tuesday nights we reflect on significant issues and accomplishments that occurred over the weekend, and since our previous meeting. We identify opportunities for improvement and assign responsibilities for the upcoming week. We utilize Thursday night Zoom conferences to check the progress of our group member's and to set milestones going into the following week. We make sure our team mates are on track. In addition to our scheduled Zoom meetings, ad-hoc conferences occur on weekends when a quick sync is necessary. Our secondary means of communication, Slack is utilized throughout the week. Our teammates ask questions, provide feedback and share work through slack before committing to their branches.


## Determining the Best Airlines
We will be classifying  each airline that traffics through San Francisco International Airport(SFO). A Prediction of each airline’s success will be based on their performance. The outcome of our assesment will provide potential future customers with precise information of each airline’s quality and how to choose one for their own benefit. 

![](/Images/project_workflow.png)


## Database

*	Created program that imports the air traffic data downloaded previously to the Resource folder  
*	After the data was imported into data frames the programs conducts cleaning process by removing irrelevant columns, and rows with missing data.
*	After two major data frames #SFO_Passanger_statistics and #SFO_Landing_statistics were cleaned the program joints them into one, #SFO_data_df ,  and cleaned
*	The major data frame #SFO_data_df contains all metrics used for calculating airline gain: number of passengers per month, total number of flights, total weight etc. 
*	Based on , Fleet_Dat.csv, dataset the software creates data frame that contains the list of all the airlines that land at SFO. The **airline_fleet_cost dataframe 
contains the number, age and cost of all the aircrafts that each airline has

![](/Images/QDBD_rev6.JPG)


![](/Images/QDBD_rev7.JPG)

## Machine Learning Model & Linear Regression



* Refined data processing (ETL) for Machine Learning model: Final data set is saved as csv and exported to postregSQL
* The refined ETL program after cleaning the data loads it into the postregSQL. The model also maniulates data base to create new table "delay_airline_vs_cost" which shows average airline delay and airline fleet properties (age, cost, number airplanes). Unfortunately due to large mismatch of initial data after cleaning there are only 5 airlines remaining (out of 75). However data suggest that age and number of airplanes are key factor in reduction of the delay
* Created unsupervised Machine Learning algorithm that classifies airlines into 2 groups and plots dependence of passanger count vs. airline costs
* Integrated ML algorithm with data base

Logistic Regression is a statistical method for predicting binary outcomes from data. An Example of this are “yes” vs “no”.
These are categories that translate to probability of being a 0 or a 1. We calculate the logistic regression by adding an activation function as the final step to our linear model. This converts the linear regression output to a probability.

We import all dependencies we need and import our input dataset airline_performance_csv > Generate some data > Split data into training and testing > create a logistic model > fit(train) model using the training data > make predictions > validate model using test data > Evaluation metrics, retrieve the imbalanced classification report and balanced accuracy score.


![](/Images/fleet_age_passenger_count.png)


![](/Images/fleet_age_passenger_count_class_distribution.png)


# Resources
*	Data charts: SFO_Passanger_statistics, SFO_Landing_statistics, Fleet Data, Flight delay data
1.	SFO_Passanger_statistics, source: https://www.kaggle.com/san-francisco/sf-air-traffic-passenger-and-landings-statistics
2.	SFO_Landing_statistics, source: https://www.kaggle.com/san-francisco/sf-air-traffic-passenger-and-landings-statistics
3.	Fleet Data, source: https://www.kaggle.com/traceyvanp/airlinefleet
4.  Flight Delay Data: https://www.kaggle.com/giovamata/airlinedelaycauses
