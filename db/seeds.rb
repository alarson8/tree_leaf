# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

now = Time.now
Session.create(patient_name: "Max", start_time: now - 12.hours, end_time: now - 11.hours )
Session.create(patient_name: "Trish", start_time: now - 9.hours, end_time: now - 8.hours )
Session.create(patient_name: "Sam", start_time: now - 1.day - 12.hours, end_time: now - 1.day - 11.hours )
Session.create(patient_name: "Max", start_time: now + 1.day - 12.hours, end_time: now + 1.day - 11.hours )
