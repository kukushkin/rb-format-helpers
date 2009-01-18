
# Converts a number of seconds into a string:
# "XXh YYm ZZs"
#
def seconds_to_human( s )
  str = ''
  ss = s.floor % 60
  mm = (s / 60).floor % 60
  hh = (s / (60*60)).floor
  
  str += "#{hh}h " if hh > 0
  str += "#{mm}m " if mm > 0
  str += "#{ss}s"
end
