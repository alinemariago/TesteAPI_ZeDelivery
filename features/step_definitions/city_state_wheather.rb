Dado('que eu tenha o {string},{string} de uma cidade') do |city,state|
    @city = "London"
    @state = "uk"
  end
  
  Então('devo receber as informações detalhadas do clima da cidade e estado') do
    @result = HTTParty.get(@endpoint)
  end
  
  Então('o code deve ser {string}') do |status_code|
    expect(@result.response.code).to eql status_code
    expect(@city).to include (@result['name'])
  end
  