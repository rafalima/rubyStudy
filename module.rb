#nesse caso o module só está servindo como um wrapper de métodos, posso está errado,
#mas esse module Test é o mesmo que ter uma classe estática
module Test

  # posso usar o self
  def self.hello_world
    p "hello_world"
  end

  # posso usar o nome do módulo ao inves do self, mas o self fica mais clean
  def Test.print(value)
    p value
  end

end

# exatamente a mesma coisa de cima. Na prática não sei qual a diferença
class Class_Test

  # posso usar o self
  def self.hello_world
    p "hello_world"
  end

  # posso usar o nome da classe ao inves do self, mas o self fica mais clean
  def Class_Test.print(value)
    p value
  end

end


# esse tipo de modulo não funciona para ser chamado direto,
# tem que ser extendido ou incluido
module Greeter
  def greet
    puts "Hello!"
  end
end


# ao usar o include de um modulo, seus métodos serão métodos de instancia
class Person
  include Greeter
end


# ao usar o extend de um modulo, seus métodos serão métodos de classe, ou seja, estáticos
class NewPerson
  extend Greeter
end


# Os dois modulos abaixo possuem a mesma classe.
# isso é possível pq nesse caso o module tá servindo de namespace
module Modulo_Um

  # é possível ter um módulo com método estático e ainda uma classe dentro. Sim, parece bizarro!
  def self.hello_world
    p "hello!"
  end

  class Teste
    def print(value)
      p value
    end

  end

end

module Modulo_Dois

  class Teste
    def print(value)
      p value
    end

  end

end



