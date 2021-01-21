Dado('que eu tenha o {string} de uma cidade') do |city|
    @city = "London"
  end
  
  Quando('eu faço uma solicitação GET') do
    @endpoint = "http://api.openweathermap.org/data/2.5/weather?q=#{@city}&appid=57b1521e1623d0d88a559427b262465a"
    @result = HTTParty.get(@endpoint)
    @endpointestado = "http://api.openweathermap.org/data/2.5/weather?q=#{@city},#{@state}&appid=57b1521e1623d0d88a559427b262465a"
    @resultestado = HTTParty.get(@endpointestado)
    @endpointestadoecaixapostal = "http://api.openweathermap.org/data/2.5/weather?q=#{@city},#{@state},#{@caixapostal}&appid=57b1521e1623d0d88a559427b262465a"
    @resultcaixapostal = HTTParty.get(@endpointestadoecaixapostal)
  end
  
  Então('devo receber as informações detalhadas do clima da cidade') do
    expect(@city).to include (@result['name'])
    expect(@city).to include (@resultestado['name'])
    expect(@city).to include (@resultcaixapostal['name'])
  end
  
  Então('o status code deve ser {string}') do |status_code|
    expect(@result.response.code).to eql status_code
    expect(@resultestado.response.code).to eql status_code
    expect(@resultcaixapostal.response.code).to eql status_code
  end

  Dado('que eu tenha o {string},{string} de uma cidade') do |city,state|
    @city = "London"
    @state = "uk"
  end
  
  Dado('que eu tenha o {string},{string},{string} de uma cidade') do |city,state,caixapostal|
    @city = "London"
    @state = "uk"
    @caixapostal = "ISO 3166"
  end
  
  