class Api
    
    #! API from https://opentdb.com/api.php?amount=50&category=27&type=multiple
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
            multiple_choice = [
                data_obj["correct_answer"], 
                data_obj["incorrect_answers"][0], 
                data_obj["incorrect_answers"][1], 
                data_obj["incorrect_answers"][2]
            ].shuffle

            animal["choice1"] = multiple_choice[0]
            animal["choice2"] = multiple_choice[1]
            animal["choice3"] = multiple_choice[2]
            animal["choice4"] = multiple_choice[3]
            
            animal["answer"] = data_obj["correct_answer"]

            animals << animal
        end 

        File.write("animals.json", animals.to_json)
    end 

    #! API from https://opentdb.com/api.php?amount=49&category=26&type=multiple
    def self.celebrities
        url = "https://opentdb.com/api.php?amount=49&category=26&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        
        data = JSON.parse(response.body)
        
        celebrities = []

        data["results"].each do |data_obj|
            celebrity = {}

            celebrity["question"] = data_obj["question"]

            # Shuffling multiple choice
            multiple_choice = [
                data_obj["correct_answer"], 
                data_obj["incorrect_answers"][0], 
                data_obj["incorrect_answers"][1], 
                data_obj["incorrect_answers"][2]
            ].shuffle

            celebrity["choice1"] = multiple_choice[0]
            celebrity["choice2"] = multiple_choice[1]
            celebrity["choice3"] = multiple_choice[2]
            celebrity["choice4"] = multiple_choice[3]
            
            celebrity["answer"] = data_obj["correct_answer"]

            celebrities << celebrity
        end 

        File.write("celebrities.json", celebrities.to_json)
    end 

    #! API from https://opentdb.com/api.php?amount=50&category=18&type=multiple
    def self.computer_science
        url = "https://opentdb.com/api.php?amount=50&category=18&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        
        data = JSON.parse(response.body)
        
        computer_science = []

        data["results"].each do |data_obj|
            comp_sci = {}

            comp_sci["question"] = data_obj["question"]

            # Shuffling multiple choice
            multiple_choice = [
                data_obj["correct_answer"], 
                data_obj["incorrect_answers"][0], 
                data_obj["incorrect_answers"][1], 
                data_obj["incorrect_answers"][2]
            ].shuffle

            comp_sci["choice1"] = multiple_choice[0]
            comp_sci["choice2"] = multiple_choice[1]
            comp_sci["choice3"] = multiple_choice[2]
            comp_sci["choice4"] = multiple_choice[3]
            
            comp_sci["answer"] = data_obj["correct_answer"]

            computer_science << comp_sci
        end 

        File.write("computer_science.json", computer_science.to_json)
    end 
end 