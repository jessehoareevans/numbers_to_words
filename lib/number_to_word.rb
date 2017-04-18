ones = {1 => "one"}




class Fixnum
  define_method(:number_to_word) do
    num = self.to_s.chars.map(&:to_i)

    ones = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5=> "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}

    teens = { 0 => "ten", 1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen"}

    twenties = { 0 => "", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    if self < 10
      ones.fetch(num[0])
    elsif self < 20
      teens.fetch(num[1])
    elsif self <100
      twenties.fetch(num[0])+
      ('-' + ones.fetch(num[1]))

    elsif self <1000
      if num[1] == 1
        ones.fetch(num[0])+
        ('-' + 'hundred ' + teens.fetch(num[2]))
      else
        ones.fetch(num[0])+
        ('-' + 'hundred ' + twenties.fetch(num[1]))+
        ('-' + ones.fetch(num[2]))
      end

    elsif self <10000
      # brilliant zero test
      if num[1] == 0
        ones.fetch(num[0])+
        ('-' + 'thousand ' + twenties.fetch(num[2]))+
        ('-' + ones.fetch(num[3]))
      elsif num[2] == 1
        ones.fetch(num[0])+
        ('-' + 'thousand ' + ones.fetch(num[1]))+
        ('-' + 'hundred ' + teens.fetch(num[3]))
      else
        ones.fetch(num[0])+
        ('-' + 'thousand ' + ones.fetch(num[1]))+
        ('-' + 'hundred ' + twenties.fetch(num[2]))+
        ('-' + ones.fetch(num[3]))
      end

    elsif self <100000
      if num[1] == 0 && num[3] == 1
        twenties.fetch(num[0])+
        (' thousand, ' + ones.fetch(num[2]))+
        ('-' + 'hundred ' + teens.fetch(num[4]))

      elsif  num[1] == 0
          twenties.fetch(num[0])+
          (' thousand, ' + ones.fetch(num[2]))+
          ('-' + 'hundred ' + twenties.fetch(num[3]))+
          ('-' + ones.fetch(num[4]))
      # if num[1] == 0
      #   twenties.fetch(num[0]).+
      #   ('-' + 'thousand ' + twenties.fetch(num[2])).+
      #   ('-' + ones.fetch(num[3]))
      elsif num[3] == 1
        twenties.fetch(num[0])+
        ('-' + ones.fetch(num[1]))+
        (' thousand, ' + ones.fetch(num[2]))+
        ('-' + 'hundred ' + teens.fetch(num[4]))
      else
        twenties.fetch(num[0])+
        ('-' + ones.fetch(num[1]))+
        (' thousand, ' + ones.fetch(num[2]))+
        ('-' + 'hundred ' + twenties.fetch(num[3]))+
        ('-' + ones.fetch(num[4]))
      end
  end
  end
end
