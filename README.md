# Final Project
Investigate criteria for profitable and risky airline based on air traffic at SFO. 

## “Circle”
### Objective: Design and conduct ETL process. Create schema data base.
*	Success criteria: design tables that can show the cost and relative earnings of the air lines

### Status: 
*	Created program that imports the air traffic data downloaded previously to the Resource folder  
*	After the data was imported into data frames the programs conducts cleaning process by removing irrelevant columns, and rows with missing data.
*	After two major data frames #SFO_Passanger_statistics and #SFO_Landing_statistics were cleaned the program joints them into one, #SFO_data_df ,  and cleaned
*	The major data frame #SFO_data_df contains all metrics used for calculating airline gain: number of passengers per month, total number of flights, total weight etc. 
*	Based on , Fleet_Dat.csv, dataset the software creates data frame that contains the list of all the airlines that land at SFO. The **airline_fleet_cost dataframe 
contains the number, age and cost of all the aircrafts that each airline has

### Status (6/13):
* Refined data for Machine Learning model: Final data set is saved as csv and exported to postregSQL
* Created unsupervised Machine Learning algorithm that classifies airlines into 2 groups and plots dependence of passanger count vs. airline costs
* Integrated ML algorithm with data base

# Resources
*	Data charts: SFO_Passanger_statistics, SFO_Landing_statistics, Fleet Data, Flight delay data
1.	SFO_Passanger_statistics, source: https://www.kaggle.com/san-francisco/sf-air-traffic-passenger-and-landings-statistics
2.	SFO_Landing_statistics, source: https://www.kaggle.com/san-francisco/sf-air-traffic-passenger-and-landings-statistics
3.	Fleet Data, source: https://www.kaggle.com/traceyvanp/airlinefleet
4.  Flight Delay Data: https://www.kaggle.com/giovamata/airlinedelaycauses
