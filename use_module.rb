require_relative 'module'

Test::hello_world  #tb funcionaria Test.hello_world. O ruby guide fala disso: https://github.com/bbatsov/ruby-style-guide#double-colons
Test::print("aqui") #tb funcionaria Test.print("aqui")

Class_Test::hello_world  #tb funcionaria Test.hello_world
Class_Test::print("teste aqui") #tb funcionaria Test.print("aqui")

alice = Person.new
alice.greet

NewPerson::greet #tb funcionaria NewPerson.greet

#isso vai gerar um erro, pq esse método não pode ser chamado dessa forma
# Greeter::greet

Modulo_Um::Teste.new.print("Classe Teste do modulo Modulo_Um")
Modulo_Um::hello_world
Modulo_Dois::Teste.new.print("Classe Teste do modulo Modulo_Dois")