class Api

    #! ANIMALS 50
    def self.animals
        url = "https://opentdb.com/api.php?amount=50&category=27&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri) 
        @@data = JSON.parse(response.body)["results"]

        self.category_questions
    end 

    #! CELEBRITIES 48
    def self.celebrities
        url = "https://opentdb.com/api.php?amount=48&category=26&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)   
        @@data = JSON.parse(response.body)["results"]
        
        self.category_questions
    end 

    #! COMPUTER SCIENCE 50
    def self.computer_science
        url = "https://opentdb.com/api.php?amount=50&category=18&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)   
        @@data = JSON.parse(response.body)["results"]
        
        self.category_questions
    end 

    #! GEOGRAPHY 50
    def self.geography
        url = "https://opentdb.com/api.php?amount=50&category=22&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)      
        @@data = JSON.parse(response.body)["results"]
        
        self.category_questions
    end 

    #! HISTORY 50
    def self.history
        url = "https://opentdb.com/api.php?amount=50&category=23&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri) 
        @@data = JSON.parse(response.body)["results"]
        
        self.category_questions
    end 

    #! MATHEMATICS 33
    def self.mathematics
        url = "https://opentdb.com/api.php?amount=33&category=19&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        @@data = JSON.parse(response.body)["results"]
        
        self.category_questions
    end 

    #! MUSIC 50
    def self.music
        url = "https://opentdb.com/api.php?amount=50&category=12&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        @@data = JSON.parse(response.body)["results"]
        
        self.category_questions
    end 

    #! SPORTS 50
    def self.sports
        url = "https://opentdb.com/api.php?amount=50&category=21&type=multiple"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        @@data = JSON.parse(response.body)["results"]
        
        self.category_questions
    end 

    #! HELPER METHOD
    def self.category_questions
        category_questions = []
    
        @@data.each do |data_obj|
            question = {}
    
            question["question"] = data_obj["question"]
    
            # Shuffling multiple choice
            multiple_choice = [
                data_obj["correct_answer"], 
                data_obj["incorrect_answers"][0], 
                data_obj["incorrect_answers"][1], 
                data_obj["incorrect_answers"][2]
            ].shuffle
    
            question["choice1"] = multiple_choice[0]
            question["choice2"] = multiple_choice[1]
            question["choice3"] = multiple_choice[2]
            question["choice4"] = multiple_choice[3]
            
            question["answer"] = data_obj["correct_answer"]
    
            category_questions << question
        end 
    
        category_questions
    end 

end 