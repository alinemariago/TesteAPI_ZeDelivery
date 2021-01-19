Dado('que eu tenha o {string},{string},{string} de uma cidade') do |city,state,caixapostal|
    @city = "London"
    @state = "uk"
    @caixapostal = "ISO 3166"
  end
  
  Então('devo receber as informações detalhadas do clima da cidade e estado') do
    @result = HTTParty.get(@endpoint)
  end
  
  