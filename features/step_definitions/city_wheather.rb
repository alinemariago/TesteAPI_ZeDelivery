Dado('que eu tenha o {string} de uma cidade') do |city|
    @city = "London"
    @endpoint = "http://api.openweathermap.org/data/2.5/weather?q=#{@city}&appid=57b1521e1623d0d88a559427b262465a"
  end
  
  Quando('eu faço uma solicitação GET') do
    @result = HTTParty.get(@endpoint)
  end
  
  Então('devo receber as informações detalhadas do clima da cidade') do
    expect(@city).to include (@result['name'])
  end
  
  Então('o status code deve ser {string}') do |status_code|
    expect(@result.response.code).to eql status_code
  end

  Dado('que eu tenha o {string},{string} de uma cidade') do |city,state|
    @city = "London"
    @state = "uk"
    @endpoint = "http://api.openweathermap.org/data/2.5/weather?q=#{@city},#{@state}&appid=57b1521e1623d0d88a559427b262465a"
  end
  
  Dado('que eu tenha o {string},{string},{string} de uma cidade') do |city,state,caixapostal|
    @city = "London"
    @state = "uk"
    @caixapostal = "ISO 3166"
    @endpoint = "http://api.openweathermap.org/data/2.5/weather?q=#{@city},#{@state},#{@caixapostal}&appid=57b1521e1623d0d88a559427b262465a"
  end
  
  