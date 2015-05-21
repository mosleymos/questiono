require 'rails_helper'

describe 'site static routes' do 
    it 'GET /' do
        expect(:get => '/').to_query(
            controller:'static',
            action:'home'
        )
    end

    it 'GET /about' do
        expect(:get => '/about').to_query(
            controller:'static',
            action:'about'
        )
    end
end

