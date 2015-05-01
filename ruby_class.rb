require 'pry'

class Pessoa
  attr_accessor :name, :last_name

  def initialize(name, last_name)
    self.name = name
    self.last_name = last_name
  end


  def metodo
    puts "static"
  end

  def full_name
    binding.pry
    self.name + " " + self.last_name
    puts "full"
    array = [1,123,124,5]
    puts array
  end

  def outro
    puts "outro"
  end

  # o operador * vai transformar todos os parametros em array
  def varios_args(*args)
    puts "Tamanho de args: #{args.size}"
    args.each { |x| p x}
  end

end

p = Pessoa.new("rafael","lima")
# p.full_name
p.outro
p.varios_args(1,23,4,"Rafael",{nome:"Rafael",idade:"32"},[222,333])
