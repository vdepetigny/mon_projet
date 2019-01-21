require 'pry'

class User
	attr_accessor :email
	@@all = []

	def initialize (email_to_save)
		@email = email_to_save
		@@all << @email
	end

	def self.all
	    return @@all
	end

	def self.find_by_email(email_to_save)
		@@all.each do |mail| 
			if mail == email_to_save 
				return mail
			end
		end
	end
end

