require "twitter"


	Twitter.configure do |config|
  	config.consumer_key = "uvkCuFf2d63ZmEodWSXc6Q"
  	config.consumer_secret = "qBDxBFnqULp4TjhfdBfX24BmbvfcoPmVkMpC3YMiQ"
  	config.oauth_token = "499825106-e1TYfau2cqiue3GS2hCPZLpSNljYmfciUPzZAXM"
  	config.oauth_token_secret = "OY978g3x5r1e4BwSb4x3ixt8igppSaq0cpFSXTyK2I"
end

#hack 
Twitter.home_timeline

Twitter.search("hail")

Twitter.search("hail").results.each do |status|
	puts "#{status}"
end

require "csv"
CSV.open("hailinator.csv") do |csv|
	csv << ["row", "of", "CSV", "data"]
	csv << ["another", "row"]

end