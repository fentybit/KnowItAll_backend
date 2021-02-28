class Api
    
    # API from https://opentdb.com/api.php?amount=50&category=27&type=multiple
    def self.animals
        url = "https://opentdb.com/api.php?amount=50&category=27&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        
        data = JSON.parse(response.body)
        
        animals = []

        data["results"].each do |data_obj|
            animal = {}

            animal["question"] = data_obj["question"]

            # Shuffling multiple choice
            multiple_choice = [data["results"][0]["correct_answer"], data["results"][0]["incorrect_answers"][0], data["results"][0]["incorrect_answers"][1], data["results"][0]["incorrect_answers"][2]].shuffle

            animal["choice1"] = multiple_choice[0]
            animal["choice2"] = multiple_choice[1]
            animal["choice3"] = multiple_choice[2]
            animal["choice4"] = multiple_choice[3]
            
            animal["answer"] = data_obj["correct_answer"]

            animals << animal
        end 

        File.write("animals.json", animals.to_json)
    end 

end 