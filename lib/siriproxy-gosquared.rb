require 'httparty'
require 'pp'
require 'json'


class SiriProxy::Plugin::GoSquared < SiriProxy::Plugin
    attr_accessor :API
    attr_accessor :token

    def initialize(config = {})
        self.API = config["API"]
        self.token = config["token"]
    end

    listen_for /website current visitors/i do
        
        @response = Net::HTTP.get(URI.parse("http://api.gosquared.com/latest/concurrents?&api_key=#{self.API}&site_token=#{self.token}"))
        
        @result = JSON.parse(@response)
        
        @answer = @result["visitors"]
        
        say "Right now you have #{@answer} active visitors on your site."
    
    request_completed
    end

    listen_for /Website visitors last week/i do
        
        @response = Net::HTTP.get(URI.parse("http://api.gosquared.com/latest/overview?&api_key=#{self.API}&site_token=#{self.token}"))
        
        @result = JSON.parse(@response)
        
        @from = @result["summaries"]["range"]["from"]
        
        @to = @result["summaries"]["range"]["to"]
        
        @average = @result["summaries"]["list"]["visitors.total"]["avg"]
        
        say "Between #{@from} and #{@to} you have had an average of #{@average} visitors on your site.", spoken: "Here are your results"
    
    request_completed
    end

    listen_for /Website visitors engagement/i do
        
        @response = Net::HTTP.get(URI.parse("http://api.gosquared.com/latest/engagement?&api_key=#{self.API}&site_token=#{self.token}"))
    
        @result = JSON.parse(@response)

        @average = @result["timeOnSite"]["average"]
    
        say "On average people spend #{@average} seconds actively on your site."
    
    request_completed
    end

end