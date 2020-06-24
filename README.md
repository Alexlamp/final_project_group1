

# Highest Performing Airlines 
## Ivestigating Air tracffic at San Francisco International Airport (SFO). 
### Tomasz Olewicz, Alex Lamp, Irene Kang, Joe Chun


## Segment 1-2 Roles
Alex Lamp - Git Hub/Tableau   <br>
Irene Kang - Machine Learning Model <br>
Tomasz Olewicz - Data Base/ Machine Learning Model <br>
Joe Chun - DashBoard/Presentation  <br>

## Communication Protocols

Our group collaborates using two methods of telecommunication. Our primary method of communication, Zoom video conferencing, and our secondary method, Slack direct messaging. Twice a week, on Tuesday and Thursday nights, we work together in breakout sessions over Zoom. On Tuesday nights we reflect on significant issues and accomplishments that occurred over the weekend, and since our previous meeting. We identify opportunities for improvement and assign responsibilities for the upcoming week. We utilize Thursday night Zoom conferences to check the progress of our group member's and to set milestones going into the following week. We make sure our team mates are on track. In addition to our scheduled Zoom meetings, ad-hoc conferences occur on weekends when a quick sync is necessary. Our secondary means of communication, Slack is utilized throughout the week. Our teammates ask questions, provide feedback and share work through slack before committing to their branches.


## Determining the Best Airlines
We will be classifying  each airline that traffics through San Francisco International Airport(SFO). A Prediction of each airline’s success will be based on their performance. The outcome of our assesment will provide potential future customers with precise information of each airline’s quality and how to choose one for their own benefit. 

![](/Images/project_workflow.png)


## Source of Data Set
### Data charts: SFO_Passanger_statistics, SFO_Landing_statistics, Fleet Data, Flight delay data
1.	SFO_Passanger_statistics, source: https://www.kaggle.com/san-francisco/sf-air-traffic-passenger-and-landings-statistics
2.	SFO_Landing_statistics, source: https://www.kaggle.com/san-francisco/sf-air-traffic-passenger-and-landings-statistics
3.	Fleet Data, source: https://www.kaggle.com/traceyvanp/airlinefleet
4.  Flight Delay Data: https://www.kaggle.com/giovamata/airlinedelaycauses

## Database
We Created a program that imports the air traffic data from Kaggle, downloaded previously to our Resources folder. After the data was imported into data frames, our program conducts a cleaning process by removing irrelevant columns, and rows that contain missing data. After two major data frames, SFO_Passanger_statistics and SFO_Landing_statistics were created, they were were cleaned a joined as SFO_data_df. 

SFO_data_df contains all metrics used for calculating each airline's gain: (number of passengers per month, total number of flights, total weight etc). We cleaned the Fleet_Dat.csv, with our program to create the airline_fleet_cost dataframe that contains the list of all the airline's that land at SFO. This data frame contains the number, age and cost of all the aircrafts that each airline has.

![](/Images/QDBD_rev6.JPG)



## Machine Learning Model & Linear Regression



We refined and processed the data for our machine learning model with using our extract, transform load(ETL) program. The ETL program cleans the data, and loads it into PostgreSQL. The program also maniulates the data base to create a new table "delay_airline_vs_cost". 

![](/Images/QDBD_rev7.JPG)

This table shows the average airline delay and airline fleet metrics (age, cost, number airplanes). Unfortunately, due to large mismatch of initial data after cleaning, there are only 5 airlines remaining (out of 75). The samll data set suggest that age and number of airplanes are a key factor in reduction of the delay time.

![](/Images/average_delay.png)


Created unsupervised Machine Learning algorithm that classifies airlines into 2 groups and plots dependence of passanger count vs. airline costs
* Integrated ML algorithm with data base

We divide the airline flights into clusters to be later used as a score. By summing the scores it is then possible to rank and classify the airlines. In the original data set, each flight data point represents the summary of flights that occurred within one month, between 2005 and 2018. Each airline has a set of flight datapoints from 2005 to 2018. We classify the monthly performance of each airline and take the mean of airline performance This allows us to group and rank the airlines.

In the experiment the data was divided into 3 Pricipal Components to improve data visualization and grouping. We find that with 3 primary components the optimal number of classes is 4. The correlation matrix showed a positive correlation between the number of passengers, carried weight and the airline class. The more passengers an airline has, the more revenue generated which ultimately leads to higher score. We observe a negative correlation between airline fleet costs and the class. This allows us to directly interpret the class as a score, or rank of the airline.

Logistic Regression is a statistical method for predicting binary outcomes from data. An Example of this are “yes” vs “no”.
These are categories that translate to probability of being a 0 or a 1. We calculate the logistic regression by adding an activation function as the final step to our linear model. This converts the linear regression output to a probability.

We import all dependencies we need and import our input dataset airline_performance_csv > Generate some data > Split data into training and testing > create a logistic model > fit(train) model using the training data > make predictions > validate model using test data > Evaluation metrics, retrieve the imbalanced classification report and balanced accuracy score.


![](/Images/fleet_age_passenger_count.png)


![](/Images/fleet_age_passenger_count_class_distribution.png)



# Slides
https://drive.google.com/file/d/1DO5OyS21mTK3smB3iNwiI0AWKk3BIqKb/view?usp=sharing
