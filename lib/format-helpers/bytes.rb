#
# These are file size formatting helpers.
#
module FormatHelpers

# Returns number of bytes in +n+ kilobytes.
#
def kilobytes n
  n*1024
end

# Returns number of bytes in +n+ megabytes.
#
def megabytes n
  n*1024*1024
end

# Returns number of bytes in +n+ gigabytes.
#
def gigabytes n
  n*1024*1024*1024
end

# Converts +n+ as a number of bytes into a readable string representation.
#
# Example:
#   number_to_human_size 825 => '825 bytes'
#   number_to_human_size 1024 => '1 KB'
# 
#
def number_to_human_size( n, precision = 1 ) 
  return "%d bytes" % n if n < 1024
  
  %w(KB MB GB TB).each do |units|
    n = n.to_f / 1024
    if n < 1000
      return "%.#{precision}f #{units}" % n
    end
  end
  
  raise "Number too big"
end
  
end # FormatHelpers
