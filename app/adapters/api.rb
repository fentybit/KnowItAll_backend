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

    #! API from https://opentdb.com/api.php?amount=50&category=22&type=multiple
    def self.geography
        url = "https://opentdb.com/api.php?amount=50&category=22&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        
        data = JSON.parse(response.body)
        
        geography = []

        data["results"].each do |data_obj|
            geo = {}

            geo["question"] = data_obj["question"]

            # Shuffling multiple choice
            multiple_choice = [
                data_obj["correct_answer"], 
                data_obj["incorrect_answers"][0], 
                data_obj["incorrect_answers"][1], 
                data_obj["incorrect_answers"][2]
            ].shuffle

            geo["choice1"] = multiple_choice[0]
            geo["choice2"] = multiple_choice[1]
            geo["choice3"] = multiple_choice[2]
            geo["choice4"] = multiple_choice[3]
            
            geo["answer"] = data_obj["correct_answer"]

            geography << geo
        end 

        File.write("geography.json", geography.to_json)
    end 

    #! API from https://opentdb.com/api.php?amount=50&category=23&type=multiple
    def self.history
        url = "https://opentdb.com/api.php?amount=50&category=23&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        
        data = JSON.parse(response.body)
        
        history = []

        data["results"].each do |data_obj|
            hist = {}

            hist["question"] = data_obj["question"]

            # Shuffling multiple choice
            multiple_choice = [
                data_obj["correct_answer"], 
                data_obj["incorrect_answers"][0], 
                data_obj["incorrect_answers"][1], 
                data_obj["incorrect_answers"][2]
            ].shuffle

            hist["choice1"] = multiple_choice[0]
            hist["choice2"] = multiple_choice[1]
            hist["choice3"] = multiple_choice[2]
            hist["choice4"] = multiple_choice[3]
            
            hist["answer"] = data_obj["correct_answer"]

            history << hist
        end 

        File.write("history.json", history.to_json)
    end 

    #! API from https://opentdb.com/api.php?amount=36&category=19&type=multiple
    def self.mathematics
        url = "https://opentdb.com/api.php?amount=36&category=19&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        
        data = JSON.parse(response.body)
        
        mathematics = []

        data["results"].each do |data_obj|
            math = {}

            math["question"] = data_obj["question"]

            # Shuffling multiple choice
            multiple_choice = [
                data_obj["correct_answer"], 
                data_obj["incorrect_answers"][0], 
                data_obj["incorrect_answers"][1], 
                data_obj["incorrect_answers"][2]
            ].shuffle

            math["choice1"] = multiple_choice[0]
            math["choice2"] = multiple_choice[1]
            math["choice3"] = multiple_choice[2]
            math["choice4"] = multiple_choice[3]
            
            math["answer"] = data_obj["correct_answer"]

            mathematics << math
        end 

        File.write("mathematics.json", mathematics.to_json)
    end 

    #! API from https://opentdb.com/api.php?amount=50&category=12&type=multiple
    def self.music
        url = "https://opentdb.com/api.php?amount=50&category=12&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        
        data = JSON.parse(response.body)
        
        music = []

        data["results"].each do |data_obj|
            mus = {}

            mus["question"] = data_obj["question"]

            # Shuffling multiple choice
            multiple_choice = [
                data_obj["correct_answer"], 
                data_obj["incorrect_answers"][0], 
                data_obj["incorrect_answers"][1], 
                data_obj["incorrect_answers"][2]
            ].shuffle

            mus["choice1"] = multiple_choice[0]
            mus["choice2"] = multiple_choice[1]
            mus["choice3"] = multiple_choice[2]
            mus["choice4"] = multiple_choice[3]
            
            mus["answer"] = data_obj["correct_answer"]

            music << mus
        end 

        File.write("music.json", music.to_json)
    end 
end 