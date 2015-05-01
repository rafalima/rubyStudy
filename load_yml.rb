require 'yaml'

env = YAML.load_file('environments.yml')


p "Pessoa fisica com nome: #{env['pessoa']['fisica']['nome']}"
p "Pessoa fisica com cpf: #{env['pessoa']['fisica']['cpf']}"

p "Pessoa juridica com nome: #{env['pessoa']['juridica']['nome']}"
p "Pessoa juridica com cpf: #{env['pessoa']['juridica']['cpf']}"
