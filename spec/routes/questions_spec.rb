require 'rails_helper'

describe 'site questions routes' do 
    it 'GET /questions' do
        expect(:get => '/questions').to_query(
            controller:'questions',
            action:'index'
        )
    end
end
