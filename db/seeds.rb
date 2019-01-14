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

Contest.create(name: '10 players', entrants_total: 10, entrants_current: 0, winner: '')
Contest.create(name: '20 players', entrants_total: 20, entrants_current: 0, winner: '')
Contest.create(name: '50 players', entrants_total: 50, entrants_current: 0, winner: '')
Contest.create(name: '100 players', entrants_total: 100, entrants_current: 0, winner: '')
Contest.create(name: '250 players', entrants_total: 250, entrants_current: 0, winner: '')
Contest.create(name: '500 players', entrants_total: 500, entrants_current: 0, winner: '')
Contest.create(name: '750 players', entrants_total: 750, entrants_current: 0, winner: '')
Contest.create(name: '1000 players', entrants_total: 1000, entrants_current: 0, winner: '')