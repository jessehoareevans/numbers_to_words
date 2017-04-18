ones = {1 => "one"}




class Fixnum
  define_method(:number_to_word) do
    num = self.to_s.chars.map(&:to_i)
    puts num
    puts self
    ones = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5=> "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}

    teens = { 0 => "ten", 1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen"}

    twenties = { 0 => "", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    if self < 10
      ones.fetch(num[0])
    elsif self < 20
      teens.fetch(num[1])
    elsif self <100
      twenties.fetch(num[0]).concat('-' + ones.fetch(num[1]))

    elsif self <1000
      if num[1] == 1
        ones.fetch(num[0]).concat('-' + 'hundred ' + teens.fetch(num[2]))
      else
        ones.fetch(num[0]).concat('-' + 'hundred ' + twenties.fetch(num[1])).concat('-' + ones.fetch(num[2]))
      end

    elsif self <10000
      if num[1] == 0
        ones.fetch(num[0]).concat('-' + 'thousand ' + twenties.fetch(num[2])).concat('-' + ones.fetch(num[3]))
    elsif num[2] == 1
        ones.fetch(num[0]).concat('-' + 'thousand ' + ones.fetch(num[1])).concat ('-' + 'hundred ' + teens.fetch(num[3]))
      else
        ones.fetch(num[0]).concat('-' + 'thousand ' + ones.fetch(num[1])).concat ('-' + 'hundred ' + twenties.fetch(num[2])).concat('-' + ones.fetch(num[3]))
      end
    end
  end
end
