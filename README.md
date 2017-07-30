# MRR_Churn_CM
#### Credentials
The authentication code can be found on ChartMogul's API reference site. To use ChartMogul's API you must enter your Account Token and Security Key which can be found through the admin settings within your ChartMogul account.

```
ChartMogul.account_token = 'Insert Token Here'
ChartMogul.secret_key = 'Insert Key Here'
```

_**Note:** Never expose or share your Account Token or Security Key. Keep it secret... keep it safe!_

#### Dates
The code can be found in ChartMogul's API reference site. The dates are defined within the code and passed as parameters to change the range of months to pull numbers from. To change the dates please replace the current start and end date parameters within the code.

```
mrr_data = ChartMogul::Metrics.mrr_churn_rate(start_date: 'YYYY-MM-DD', end_date: 'YYYY-MM-DD')
```

#### Run to TXT file
```
ruby MRR_Churn.rb > output.txt
```

#### Sample Output
```
----------------------------
MRR Churn Rate: Top 3 Months
----------------------------
May 2016 | Rate: 11.39
August 2016 | Rate: 9.49
January 2016 | Rate: 7.51
 
---------------------------------
MRR Churn Rate: Highest to Lowest
---------------------------------
May 2016 | Rate: 11.39
August 2016 | Rate: 9.49
January 2016 | Rate: 7.51
December 2015 | Rate: 6.58
February 2016 | Rate: 3.13
July 2016 | Rate: 2.6
March 2016 | Rate: 2.08
October 2015 | Rate: -0.19
September 2015 | Rate: -0.95
April 2016 | Rate: -1.29
August 2015 | Rate: -1.52
November 2015 | Rate: -2.11
June 2016 | Rate: -2.59
```
