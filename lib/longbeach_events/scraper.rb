require_relative './events.rb'

class LongbeachEvents::Scraper


    def get_page
        doc = Nokogiri::HTML(open("https://eventbrite.com/d/ca--long-beach/events"))
        #categories - doc.css(".eds-text-hs").first.text
        #Event = doc.css(".eds-event-card__formatted-name--is-clamped").text
        #Time and Date = doc.css(".eds-text-color--primary-brand").first.text
        #location = doc.css(".card-text--truncated__one").first.text
    end

    def get_events
        event = self.get_page.css(".eds-text-hs").text
    end

   # def make_events
    #    get_events.each do |event|
     #       event = LongbeachEvents::Events.new
      #      event.title = event.css(".eds-event-card__formatted-name--is-clamped").text
       #     event.location = event.css(".card-text--truncated__one").text
        #    event.date = event.css(".eds-text-color--primary-brand").text
         #   event.type = event.css(".eds-text-hs").text
        #end
    #end
    def self.scrape_events
        url = "https://eventbrite.com/d/ca--long-beach/events"
        doc = Nokogiri::HTML(open(url))
        #puts doc
        events = doc.css(".eds-text-hs")
        events.each do |event|
            title = event.css(".eds-is-hidden-accessible").text
            location = event.css(".card-text--truncated__one").text
            date = event.css(".eds-text-color--primary-brand").text
            puts title, location, date
            LongbeachEvents::Events.new(title, location, date)
        end

    end
    

end
