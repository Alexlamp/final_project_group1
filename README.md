# Final Project
Investigate criteria for profitable and risky airline based on air traffic at SFO. 

## Started as “Circle” but now ... ?
### Objective: Design and conduct ETL process. Create schema data base.
*	Success criteria: design tables that can show the cost and relative earnings of the air lines

### Status Segment I: 
*	Created program that imports the air traffic data downloaded previously to the Resource folder  
*	After the data was imported into data frames the programs conducts cleaning process by removing irrelevant columns, and rows with missing data.
*	After two major data frames #SFO_Passanger_statistics and #SFO_Landing_statistics were cleaned the program joints them into one, #SFO_data_df ,  and cleaned
*	The major data frame #SFO_data_df contains all metrics used for calculating airline gain: number of passengers per month, total number of flights, total weight etc. 
*	Based on , Fleet_Dat.csv, dataset the software creates data frame that contains the list of all the airlines that land at SFO. The **airline_fleet_cost dataframe 
contains the number, age and cost of all the aircrafts that each airline has

### Status Segment II:
* Refined data processing (ETL) for Machine Learning model: Final data set is saved as csv and exported to postregSQL
* The refined ETL program after cleaning the data loads it into the postregSQL. The model also maniulates data base to create new table "delay_airline_vs_cost" which shows average airline delay and airline fleet properties (age, cost, number airplanes). Unfortunately due to large mismatch of initial data after cleaning there are only 5 airlines remaining (out of 75). However data suggest that age and number of airplanes are key factor in reduction of the delay
* Created unsupervised Machine Learning algorithm that classifies airlines into 2 groups and plots dependence of passanger count vs. airline costs
* Integrated ML algorithm with data base

### Status Segment III:

#### Refined the ETL code (Data base part): 

added user input for data base code and name, added commands for cleanign the tables in data base, added 3 categories of pricing of airlines (Low cost airline, Legacy, Boutique), added options of saving the data as .csv added optional analysis of airplane delay. Refined the code for more generic data input.

#### Refined Machine Learning code: 

Integrated code with sql data base, added user input of password, added option of choosing number of clusters and primary components in data classification, created correlation matrix, created plots showing key factors that impact on airline class performance. 

#### Machine Learning experiment: 

The idea of the experiment was to divide the airline flights into performance clusters that can be use as a score. Then by summing the scores it is possible to rank and classify the airlines. In the original data the each flight data point represents the summary of flights that occurred within a one month between 2005 and 2018. Each airline has set of flight datapoints from 2005 to 2018. So we classify the monthly performance of each airline and then we take the mean of airline performance, which allows us to group and rank the airlines.

In the experiment the data was divided into 3x Primary components to allow better data visualization and grouping. I found that with 3 primary components the optimal number of classes is 4. The correlation matrix showed positive correlation between number of passengers and carried weight and the airline class. Larger number of passenger (larger profit) leads to higher score. We also observed negative correlation between airline fleet costs and the class. That allowed us of interpret the class directly as a scoring rank of the airline.

Preliminary results showed the highest score for AA and UA airlines have the highest average score: 3. 

### Segment IV.

#### Database

* ETL code is fully integrated with PostgreSQL: The code was modified to be user friendly, it requires user password and sql database name to allow other operate it by other group members. The code was updated to create two new gables using table join in postregSQL. The request is to do left join tables airline_cost_filtered and sql_combined_delay_airline into delay_airline_vs_cost and clear NaN values. As a result there is a small 5 row table of airlines flying though SFO that match airline cost and delay data. The second join request is on inner join of airline_fleet_cost and airline_name into sfo_airline_total_cost which is an equivalent of airline_cost_filtered dataframe created earlier in the code. Additional block was introduced to the code allowing user to erase all the data tables from postregSQL.
* Refined ETL: The ETL code was refined to modify and factorize data from dataframes: airline class, average fleet age, average age distribution. The factors were hosen based on additional study od airline average ticket cost, and freight to passenger income. 
* Airline classification: Flight data clusters were analyzed for the correspondence with the airline performance. Based on the results from correlation matrix the incoming data were refined to maximize correlation between the score and the key airline feature. Once the correlation was established, the cluster number was assigned to the performance rank. Then the landing data was grouped by airlines and mode of flight score, afterwards the airlines were ranked. 

Using the datetime data the refined algorithm presents performance factors as a function of time for each airline. The data shows how airline flight rank evolves with time e.g. VX airline progress from rank 1 to rank 3 as it carries more passengers with time.



# Resources
*	Data charts: SFO_Passanger_statistics, SFO_Landing_statistics, Fleet Data, Flight delay data
1.	SFO_Passanger_statistics, source: https://www.kaggle.com/san-francisco/sf-air-traffic-passenger-and-landings-statistics
2.	SFO_Landing_statistics, source: https://www.kaggle.com/san-francisco/sf-air-traffic-passenger-and-landings-statistics
3.	Fleet Data, source: https://www.kaggle.com/traceyvanp/airlinefleet
4.  Flight Delay Data: https://www.kaggle.com/giovamata/airlinedelaycauses
