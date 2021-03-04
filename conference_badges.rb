# Write your code here.
def badge_maker(name)
    return "Hello, my name is #{name}."
end

attendees = ["Edsger", "Ada", "Chrales", "Alan", "Grace", "Linus", "Matz"]

def batch_badge_creator(attendees)
    attendees.collect {|name| badge_maker(name)}
end

def assign_rooms(attendees)
    attendees.each_with_index.map {|name, index| "Hello, #{name}! You'll be assigned to room #{index+1}!"}
end

def printer(attendees)
    batch_badge_creator(attendees).each do |name|
    puts name
    end
    assign_rooms(attendees).each do |assignments|
    puts assignments
    end
end