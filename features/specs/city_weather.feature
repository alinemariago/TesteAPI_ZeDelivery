#language: pt

@buscar
Funcionalidade: Buscar Weather por

    Como aplicação backend de Gerenciamento de wheather
    Quero implementar o fluxo de buscar wheather por cidade, estado e código postal
    Para ter informações detalhadas do tempo

@buscar_por_cidade
Cenário: Buscar por cidade

    Dado que eu tenha o "nome" de uma cidade
    Quando eu faço uma solicitação GET
    Então devo receber as informações detalhadas do clima da cidade
    E o status code deve ser "200"

@buscar_por_cidade_e_estado
Cenário: Buscar por cidade e estado

    Dado que eu tenha o "nome","estado" de uma cidade
    Quando eu faço uma solicitação GET
    Então devo receber as informações detalhadas do clima da cidade
     E o status code deve ser "200"

@buscar_por_cidade_estado_caixapostal
Cenário: Buscar por cidade e estado

    Dado que eu tenha o "nome","estado","caixapostal" de uma cidade
    Quando eu faço uma solicitação GET
    Então devo receber as informações detalhadas do clima da cidade
    E o status code deve ser "200"
   