class InterestsController < ApplicationController
def index
  @interests = Interest.all
end

def create
  # "questions"=>{"0"=>"true", "1"=>"false", "2"=>"true", "8"=>"false", "13"=>"true"}}
  params[:questions].each do |question_id, answer|
    Interest.create!(question_id: question_id, answer: answer, user: current_user)
  end

  redirect_to profiles_path
end

# def delete

# end
end
