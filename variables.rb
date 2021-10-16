class Variables
  JP = 'Japan'
  KR = 'Korea'
  EN = 'England'
  K = 1000
  MILLENIMUM = 2000
  def show()
    # print(JP, K, EN, KR, MILLENIMUM)
    print(self)
    print(nil)
    print(__FILE__)
    print(__LINE__)
  end
end

# var = Variables.new
# var.show

# NUMBERS
# Fixnum(class): -2^30 to 2^(30-1) or -2^62 to 2^(62-1)
# Bignum(class): Beyond the Fixnum.
class Diff_numbers
  OCTAL = 0777
  FIXNUM = 222
  FIXNUM_UNDERLINE = 3_232
  NEGATIVE_FIXNUM = -200
  HEXNUM = 0xFFF
  BINARY = 0b111
  CHAR_CODE = 'h'.ord
  def show()
    puts(OCTAL)
    puts(FIXNUM_UNDERLINE)
    puts(HEXNUM)
    puts(BINARY)
    puts(CHAR_CODE)
  end
end

# var = Diff_numbers.new
# var.show

class Strings
  SINGLE_QUOTE = 'Stay a while and listen'
  DOUBLE_QUOTE = "Stay a while and listen, level #{'f'.ord} player."
  def show()
    puts(SINGLE_QUOTE)
    puts(DOUBLE_QUOTE)
  end
end

# var = Strings.new
# var.show


# Arrays
# Ruby arrays are not as rigid as arrays in other languages.
$sampleArr = [
    'フ・レ・ン・ド・シ・タ・イ ',
    44,
    ['Megumi Sensei', 'Taromaru'],
    'School Life'
  ]
# puts($sampleArr.length)
# puts($sampleArr.size)
# puts($sampleArr.at(3))
# $sampleArr.each do |el|
#   puts(el)
# end

# Hashes
# Similar to key-value data structure.
jp_foods = Hash.new('Onigiri')
jp_foods = {'morning' => 'Bread', 'lunch' => 'Gyudon', 'dinner' => 'Yakiniku'}

# jp_foods.each do |key, value|
#   puts("At '#{key}', people usually have '#{value}'")
# end

# Ranges
loto_seven = (1..37)
loto_seven.each do |el|
  puts(el)
end