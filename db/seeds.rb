# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Contest.create(name: 'End Around', entrants_total: 10, entrants_current: 0, winner: '')
Contest.create(name: 'Read Option', entrants_total: 20, entrants_current: 0, winner: '')
Contest.create(name: 'Omaha', entrants_total: 50, entrants_current: 0, winner: '')
Contest.create(name: 'Hail Mary', entrants_total: 100, entrants_current: 0, winner: '')
Contest.create(name: 'Razzle Dazzle', entrants_total: 250, entrants_current: 0, winner: '')
Contest.create(name: 'Philly Special', entrants_total: 500, entrants_current: 0, winner: '')
Contest.create(name: 'Flea Flicker', entrants_total: 750, entrants_current: 0, winner: '')
Contest.create(name: 'Hook and Ladder', entrants_total: 1000, entrants_current: 0, winner: '')
