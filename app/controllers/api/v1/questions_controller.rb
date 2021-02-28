class Api::V1::QuestionsController < ApplicationController
    
    def index
        if params[:category_id]
            category = Category.find_by(id: params[:category_id])
            
            if category.nil? 
                render json: { errors: "Category does not exist." }
            else 
                questions = category.questions
                render json: questions
            end 
        end 
    end 

end