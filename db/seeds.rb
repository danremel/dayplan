# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative './day_data.rb'
require_relative './task_data.rb'

Day.destroy_all
Task.destroy_all

day_data = get_day_data
task_data = get_task_data

task_data.each_pair do |day, tasks|
  info = day_data[day]
  current_day = Day.create!({
    date: info[:date]
  })

  tasks.each do |task|
    Task.create!({
      title:            task[:title],
      description:      task[:description],
      priority_level:   task[:priority_level],
      completion_time:  task[:completion_time],
      completed:        task[:completed],
      day:              current_day
    })
  end
end