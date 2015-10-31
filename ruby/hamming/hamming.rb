
class Hamming
  VERSION = 1
  def self.compute(a, b)
    count = 0
    raise ArgumentError.new('wrong arguments') if a.length != b.length
    a.split('').each_with_index { |letter, index| count = count + 1 if letter != b[index] }
    count
  end

end