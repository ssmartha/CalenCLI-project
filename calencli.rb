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

def create_event(events)
  print "date: "
  new_date = gets.chomp
  print "title: "
  new_title = gets.chomp
  print "calendar: "
  new_calendar = gets.chomp
  print "start_end: "
  new_start_end = gets.chomp
  start_end=new_start_end.split(" ")
  start_date= DateTime.parse("#{new_date} #{start_end[0]}")
  start_date_with_format= start_date.strftime('%FT%T%:z')
  end_date= DateTime.parse("#{new_date} #{start_end[1]}")
  end_date_with_format= start_date.strftime('%FT%T%:z')
  print "notes: "
  new_notes = gets.chomp
  new_event={}
  new_event[:id]=new_date
  new_event[:start_date]=start_date_with_format
  new_event[:title]=new_title
  new_event[:end_date]=end_date_with_format
  new_event[:notes]=new_notes
  new_event[:guests]=""
  new_event[:calendar]=new_calendar
  # new_event={:id=>(id=events[:id].next),:start_date=>start_date_with_format,:title=>new_title,:end_date=>end_date_with_format,:notes=>new_notes,:guests=>"",:calendar=>new_calendar}
  events.push(new_event)
end

def show_info_event(events, event_id)
  events.each do |event|
    if event[:id]==event_id
      puts "date: #{DateTime.parse("#{event[:start_date]}").strftime("%F")}"
      puts "title: #{event[:title]}"
      puts "calendar: #{event[:calendar]}"
      if event[:end_date]==""
        puts "start_end: "
      else
        puts "start_end: #{DateTime.parse("#{event[:start_date]}").strftime("%H:%M")} #{DateTime.parse("#{event[:end_date]}").strftime("%H:%M")}"
      end
      puts "notes: #{event[:notes]}"
      print "guests: "
      event[:guests].each_with_index do |guest,pos|
        if pos == event[:guests].size - 1
          print "#{guest} "
        else
          print "#{guest}, "
        end
      end
      puts " "
    end
  end
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
    create_event(events)
  when "show"
    puts "show"
    print "Event ID: "
    event_id= gets.chomp.to_i
    show_info_event(events, event_id)
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

create_event(events)




# Main Program
