require 'pry'
require 'time'

class Event 
attr_accessor :event_start, :event_length, :event_title, :event_attendees

	def initialize (date_to_save, length_to_save, title_to_save, emails_to_save)
		@event_start = Time.parse(date_to_save)
		@event_length = length_to_save.to_i * 60
		@event_title = title_to_save.to_s
		@event_attendees = emails_to_save.to_a
	end

	def postpone_24h
		@event_start += 60 * 60 * 24
	end

	def end_date
		@event_end = @event_start + @event_length
	end

	def is_past
 		puts @event_start
 		puts Time.now
 		@event_start < Time.now 
 	end

 	def is_futur
 		!self.is_past
 	end

 	def is_soon
		puts @event_start
 		puts Time.now
 		puts Time.now+30*60
 		@event_start.between?(Time.now, Time.now+30*60)
 	end

 	def to_s
 		puts "Titre : #{event_title}"
 		puts "Date de début : #{event_start.strftime("%Y-%m-%d %H:%M")}"
 		puts "Durée : #{event_length/60} minutes"
 		puts "Invités : #{event_attendees.join" "}"	
 	end
end