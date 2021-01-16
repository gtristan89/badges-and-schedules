# Write your code here.
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    attendees.collect{|attendee| badge_maker(attendee)}
end

def assign_rooms(attendees)
    attendees.each_with_index.map{|name, index| "Hello, #{name}! You'll be assigned to room #{index+=1}!"}
end

def printer(name)
    batch_badge_creator(name).each do |badge|
        puts badge
    end
        assign_rooms(name).each do |assign|
            puts assign
    end
end
