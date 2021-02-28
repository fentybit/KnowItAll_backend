class Api
    
    # API from https://opentdb.com/api.php?amount=50&category=27&type=multiple
    def self.animals
        url = "https://opentdb.com/api.php?amount=50&category=27&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        
        data = JSON.parse(response.body)

        binding.pry
        animals_array = []
        


        File.write("animals.json", animals_array.to_json)
    end 
end 