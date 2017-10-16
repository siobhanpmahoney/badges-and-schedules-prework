def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each {|i| badges.push(badge_maker(i))}
  return badges
end

def assign_rooms (speakers)
  speakers.each_with_index.map {|x, i| "Hello, #{x}! You'll be assigned to room #{i+1}!"}
end

def printer (attendees)
  attendees.each {|i| puts batch_badge_creator(attendees)[attendees.find_index(i)]; puts assign_rooms(attendees)[attendees.find_index(i)]}
end
