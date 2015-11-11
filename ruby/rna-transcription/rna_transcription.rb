class Complement
  VERSION = 2
  @@dna = { G:  'C', C:  'G', T:  'A', A:  'U'}
  @@rna = { C:  'G', G:  'C', A:  'T', U:  'A'}

  def self.of_dna(param)
    test = param.split('').map { |key| key.to_sym }
    test.each { |key| raise ArgumentError.new unless @@dna.include? key }        
    @conversion = ''
    param.split('').each { |key| @conversion+= @@dna[key.to_sym]}
    @conversion
  end

  def self.of_rna(param)
    test = param.split('').map { |key| key.to_sym }
    test.each { |key| raise ArgumentError.new unless @@rna.include? key }    
    @conversion = ''
    param.split('').each { |key| @conversion+= @@rna[key.to_sym]}
    @conversion
  end
end
