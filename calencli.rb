# Data
id = 0
events = [
  { :id => (id = id.next),
    :start_date => "2022-08-08T00:00:00-05:00",
    :title => "Ruby Basics 1",
    :end_date => "",
    :notes => "Ruby Basics 1 notes",
    :guests => %w[Teddy Codeka],
    :calendar=> "web-dev" },
  { :id => (id = id.next),
    :start_date => "2022-08-08T12:00:00-05:00",
    :title => "English Course",
    :end_date => "2022-08-08T13:30:00-05:00",
    :notes => "English notes",
    :guests => ["Stephanie"],
    :calendar=> "english" },
  { :id => (id = id.next),
    :start_date => "2022-08-09T00:00:00-05:00",
    :title => "Ruby Basics 2",
    :end_date => "",
    :notes => "Ruby Basics 2 notes",
    :guests => %w[Andre Codeka],
    :calendar=> "web-dev" },
  { :id => (id = id.next),
    :start_date => "2022-08-09T12:45:00-05:00",
    :title => "Soft Skills - Mindsets",
    :end_date => "2021-08-09T13:30:00-05:00",
    :notes => "Some extra notes",
    :guests => ["Diego"],
    :calendar=> "soft-skills" },
  { :id => (id = id.next),
    :start_date => "2022-08-10T00:00:00-05:00",
    :title => "Ruby Methods",
    :end_date => "",
    :notes => "Ruby Methods notes",
    :guests => %w[Diego Andre Teddy Codeka],
    :calendar=> "web-dev" },
  { :id => (id = id.next),
    :start_date => "2022-08-10T12:00:00-05:00",
    :title => "English Course",
    :end_date => "2021-08-10T13:30:00-05:00",
    :notes => "English notes",
    :guests => ["Stephanie"],
    :calendar=> "english" },
  { :id => (id = id.next),
    :start_date => "2022-08-11T09:00:00-05:00",
    :title => "Summary Workshop",
    :end_date => "2021-08-11T13:30:00-05:00",
    :notes => "A lot of notes",
    :guests => %w[Diego Teddy Andre Codeka],
    :calendar=> "web-dev" },
  { :id => (id = id.next),
    :start_date => "2022-08-11T09:00:00-05:00",
    :title => "Extended Project",
    :end_date => "",
    :notes => "",
    :guests => [],
    :calendar=> "web-dev" },
  { :id => (id = id.next),
    :start_date => "2022-08-12T09:00:00-05:00",
    :title => "Extended Project",
    :end_date => "",
    :notes => "",
    :guests => [],
    :calendar=> "web-dev" },
  { :id => (id = id.next),
    :start_date => "2022-08-12T12:00:00-05:00", 
    :title => "English for Engineers",
    :end_date => "2022-08-12T13:30:00-05:00",
    :notes => "English notes",
    :guests => ["Stephanie"],
    :calendar=> "english" },
  { :id => (id = id.next),
    :start_date => "2022-08-13T10:00:00-05:00",
    :title => "Breakfast with my family",
    :end_date => "2022-08-13T11:00:00-05:00",
    :notes => "",
    :guests => [],
    :calendar=> "default" },
  { :id => (id = id.next),
    :start_date => "2022-08-13T15:00:00-05:00",
    :title => "Study",
    :end_date => "2022-08-13T20:00:00-05:00",
    :notes => "",
    :guests => [],
    :calendar=> "default" },
  { :id => (id = id.next),
    :start_date => "2022-08-18T09:00:00-05:00",
    :title => "Extended Project",
    :end_date => "",
    :notes => "",
    :guests => [],
    :calendar=> "web-dev" },
  { :id => (id = id.next),
    :start_date => "2022-08-19T09:00:00-05:00",
    :title => "Extended Project",
    :end_date => "",
    :notes => "",
    :guests => [],
    :calendar=> "web-dev" },
]

# Methods
require "date"

def list_events(events)
  puts "#{'-' * 30} Welcome to CalenCLI #{'-' * 30}\n\n"

  events.each do |event|
    date = Date.parse("#{event[:start_date]}")
    date_str = date.strftime('%a %b %d') 
    
    time = DateTime.parse("#{event[:start_date]}")
    start_time = time.strftime('%H:%M')

    if "#{event[:end_date]}" == ""
      end_time  = " " * 6
      start_time = " " * 6
      puts "#{date_str} #{start_time} #{end_time} #{event[:title]} (#{event[:id]}) "
    else
      time_end = DateTime.parse("#{event[:end_date]}")
      end_time = time_end.strftime('%H:%M')
      puts "#{date_str} #{start_time} - #{end_time} #{event[:title]} (#{event[:id]})"
    end
  end
end

def print_menu
  puts "-" * 60
  puts "list | create | show | update | delete | next | prev | exit"
  puts "\n"
end

list_events(events)
print_menu

action = nil
while action != "exit"
  print "action: "
  action = gets.chomp

  case action
  when "list"
    puts "list"
  when "create"
    puts "create"
  when "show"
    puts "show"
  when "update"
    puts "update"
  when "delete"
    puts "delete"
  when "next"
    puts "next"
  when "prev"
    puts "prev"
  end
end




# Main Program
