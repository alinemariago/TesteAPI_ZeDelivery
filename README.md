# Projeto de automação de API REST

Projeto desenvolvido para testes da Open Weather API http://openweathermap.org/current

#### **O projeto possui as seguintes Gems:**

- Cucumber (permite a escrita de testes em uma linguagem muito próxima da natural)
- Faker (usado para gerar dados falsos: nomes, endereços, números de telefone etc)
- Httparty (facilita o consumo de serviços rest)
- Rspec (framework BDD para ruby)

#### **O projeto possui as seguintes funcionalidades:**

###### Cenários Login:

- Cenário de testes para Buscar informações do Clima por Cidade;
- Cenário de testes para Buscar informações do Clima por Cidade e Estado;
- Cenário de testes para Buscar informações do Clima por Cidade, Estado e Caixa Postal;

### Pré requisitos:

* Gerenciador de versões do Ruby;

- Ruby >= 2.6.6;
- Bundler;



### Instalação:

##### *Guia de instalação do Ruby + Devkit + Bundler no Windows:* - https://medium.com/qaninja/instalando-ruby-cucumber-e-capybara-no-windows-10-acb1fe833a95

- *[Bundler]*
  - *gem install bundler*

### Executando os testes:

```bash
# No terminal, na pasta do projeto, execute o seguinte comando que irá instalar as Gems do projeto:
  - bundle install
# Para rodar todos os testes, execute o seguinte comando na pasta do projeto:
  - bundle exec cucumber
# Para rodar cenários específicos utilize tags:
  - bundle exec cucumber -t @buscar_por_cidade
  - bundle exec cucumber -t @buscar_por_cidade_e_estado
  - bundle exec cucumber -t @buscar_por_cidade_estado_caixapostal
```

**Status do projeto**: Concluído

Enjoy :)

