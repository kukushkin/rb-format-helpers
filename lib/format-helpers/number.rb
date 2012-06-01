#
# These are general number formatting helpers.
#
module FormatHelpers
  

# Format number with thousands separator.
# 
# If Fixnum is passed, decimal point part is omitted.
# If not, a Float number is assumed and precision parameter is used to determine
# necessary precision.
#
def number_to_human( value, precision = 3 )
  sign_part = ( value > 0 ) ? '' : '-'
  if value.is_a? Fixnum
    integer_part = value.abs
    decimal_part = ""
  else
    integer_part = value.abs.floor
    decimal_part = (value.abs.round(precision)-value.abs.floor) * (10**precision)
    puts "dp: #{decimal_part}"
    decimal_part = ".%0#{precision}d" % decimal_part
    puts "dp2: #{decimal_part}"
  end

  integer_part = integer_part.to_s.gsub(/(\d)(?=\d{3}+$)/, '\1,')
  sign_part + integer_part + decimal_part
end
  
end # module FormatHelpers
