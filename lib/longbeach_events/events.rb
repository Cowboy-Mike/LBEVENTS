class LongbeachEvents::Events

    attr_accessor :title, :date, :type, :location

    @@all = []

    def initialize(title, location, date)
        @title = title
        @location = location
        @date = date 
        save 
    end

    def self.all
        LongbeachEvents::Scraper.scrape_events if @@all.empty?
        @@all
    end

    def self.reset
        @@all.clear
    end
    
    def save
        @@all << self
    end

end