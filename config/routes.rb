Rails.application.routes.draw do
  root 'static#home'

  get 'about' => 'static#about', as: :about
  resources :questions
  resources :subtopics
  resources :themes
  resources :answers

  resources :questions do
      resources :subtopics
  end

  get 'questions/:id/delete' => 'questions#destroy', as: :delete_question
  get 'questions/:id/edit_an_answer' => 'answers#edit_an_answer', as: :edit_answer_for_question
end
