Dado('que eu tenha o {string} de uma cidade') do |city|
    @city = "London"
  end
  
  Quando('eu faço uma solicitação GET') do
  @endpoint = "http://api.openweathermap.org/data/2.5/weather?q=#{@city}&appid=57b1521e1623d0d88a559427b262465a"
  end
  
  Então('devo receber as informações detalhadas do clima da cidade') do
    @result = HTTParty.get(@endpoint)
  end
  
  Então('o status code deve ser {string}') do |status_code|
    expect(@result.response.code).to eql status_code
    expect(@city).to include (@result['name'])
  end
  