class Interest < ApplicationRecord
  belongs_to :user

  QUESTIONS = [
    {
    question: "Are you looking for a flatmate?", # question_id = 0
    display: "I'm looking for a flatmate"
    },
    {
    question: "Do you have a house to share?", # question_id = 1
    display: "I have a house to share"
    },
    {
    question: "Are you looking for a parking spot to rent?", # question_id = 2
    display: "I'm looking for a parking spot to rent"
    },
    {
    question: "Do you have a parking spot to rent?", # question_id = 3
    display: "I have a parking spot to rent"
    },
    {
    question: "Do you feel like talking about Red dead redemption?", # question_id = 4
    display: "I feel like talking about Red dead redemption"
    },
    {
    question: "Do you feel like talking about Artificial Intelligence?", # question_id = 5
    display: "I feel like talking about Artificial Intelligence"
    },
    {
    question: "Do you feel like talking about Black Mirror?", # question_id = 6
    display: "I feel like talking about Black Mirror"
    },
    {
    question: "Do you feel like talking about The Simpsons?", # question_id = 7
    display: "I feel like talking about The Simpsons"
    },
    {
    question: "Do you feel like talking about Cars", # question_id = 8
    display: "I feel like talking about Cars"
    },
    {
    question: "Are you looking for someone to play PlayStation 4 with?", # question_id = 9
    display: "I'm looking for someone to play PlayStation 4 with"
    },
    {
    question: "Are you looking for someone to go dancing with?", # question_id = 10
    display: "I'm looking for someone to go dancing with"
    },
    {
    question: "Are you looking for someone to do sports with?", # question_id = 11
    display: "I'm looking for someone to do sports with"
    },
    {
    question: "Are you looking for someone to go to the gym with?", # question_id = 12
    display: "I'm looking for someone to go to the gym with"
    },
    {
    question: "Are you looking for someone to go running with?", # question_id = 13
    display: "I'm looking for someone to go running with"
    },
    {
    question: "Are you looking for an investor for a project you are working on?", # question_id = 14
    display: "I'm looking for an investor for a project you are working on"
    },
    {
    question: "Are you looking for a business partner?", # question_id = 15
    display: "I'm looking for a business partner"
    },
  ]

end
