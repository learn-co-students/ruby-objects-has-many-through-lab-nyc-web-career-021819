require_relative './artist.rb'
require_relative './song.rb'
require_relative './genre.rb'
require_relative './patient.rb'
require_relative './appointment.rb'
require_relative './doctor.rb'
require 'pry'

# KDA = Artist.new_song("Popstars", "Kpop")
# IU = Artist.new_song("23", "Kpop")
# Avicii = Artist.new_song("Levels", "EDM")
# Beethoven = Artist.new_song("symphony", "classical")

# KDA = Artist.new("KDA")
# KDA.new_song("Popstars", "Kpop")

DrTony = Doctor.new("DrTony")
DrSam = Doctor.new("DrSam")

DrTony.new_appointment("July 10", "Gina")
DrTony.new_appointment("Jan 13", "John")
DrSam.new_appointment("May 4", "Chrisy")

DrTony.appointments
DrSam.appointments
DrTony.patients
DrSam.patients


binding.pry