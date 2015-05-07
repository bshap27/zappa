# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

becca = User.first
becca.update(first_name: "Becca", last_name: "Shapiro")
becca.bands.create(band_name: "Wet Denim")
BandMember.where(user_id: 1)[0].update(performer: true)
Venue.create(name: "Brooklyn Bowl", city: "New York", state: "NY", bring_pa: false)
Band.find(1).events.create(venue_id: 1, date: "10/27/2015", ticket_price_adv: 15.00)
Tour.create(color: "blue", event_id: 1)
BandEvent.find(1).update(tour_id: 1, food_comp: true)
Stay.create(event_id: 1, band_id: 1, contact_name: "Jessie Lipskin", pets: false)
PersonalEvent.create(name: "Hannah's Wedding", user_id: 1, start_date: "9/10/2015", recurring: false)
BandPractice.create(date: "9/9/2015", start_time: "9:00:00", band_id: 1)
BandPracticeLocation.create(name: "Jessie's House", band_id: 1)