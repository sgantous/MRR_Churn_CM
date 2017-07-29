#Selecting the ChartMogul Lib
require 'ChartMogul'

#Providing credentials
ChartMogul.account_token = 'Insert Token Here'
ChartMogul.secret_key = 'Insert Key Here'

#Getting the data and returning it into an array of objects called 'mrr_data'
mrr_data = ChartMogul::Metrics.mrr_churn_rate(start_date: '2015-08-01', end_date: '2016-08-31')

#Sorting mrr_data by MRR churn rate in decending order
mrr_data = mrr_data.sort_by{ |item| item.mrr_churn_rate}.reverse

#Creating an array and an integer variable for later use
mrr_data_top_three = []
i = 0

#Grabbing the top 3 Months based on their MRR churn rate and putting them into their own array in decending order
mrr_data.each { |item| 
	if i < 3
		mrr_data_top_three.push(item)
	end
	i += 1
}

#Printing the 3 months with the top net MRR churn rate
#Formatting the date a bit to just show month and year instead of the month end date
puts "----------------------------"
puts "MRR Churn Rate: Top 3 Months"
puts "----------------------------"
mrr_data_top_three.each { |item| 
	puts item.date.strftime("%B %Y") + " | Rate: #{item.mrr_churn_rate}"	
}

puts " "

#Printing all months net MRR churn rates in decending order
#Formatting the date a bit to just show month and year instead of the month end date
puts "---------------------------------"
puts "MRR Churn Rate: Highest to Lowest"
puts "---------------------------------"
mrr_data.each { |item| 
	puts item.date.strftime("%B %Y") + " | Rate: #{item.mrr_churn_rate}"
}