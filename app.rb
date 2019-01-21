require 'bundler'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'


#binding.pry

# Première méthode pour lier les deux classes
#julie = User.new("julie@julie.com")
#jean = User.new("jean@jean.com")

#event = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])

#puts "Voici l'email du premier attendee de l'événement : #{event.event_attendees.first.email}"

# Deuxième méthode les deux classes (plus propre)
 User.new("julie@julie.com")
 User.new("jean@jean.com")

 julie = User.find_by_email("julie@julie.com")
 jean = User.find_by_email("jean@jean.com")

 event = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])
 puts event
 puts "Voici l'email du premier attendee de l'événement : #{event.event_attendees.first.email}"