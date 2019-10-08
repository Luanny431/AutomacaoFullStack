require './spec_helper'

describe 'Botoes de radio' do

    before(:each) do
        visit '/radios' 
    end

    it 'Seleção por ID' do        
        choose('cap')
        #choose só funciona por id
    end

    it 'Seleção por find e css selector' do        
        find('input[value=guardians]').click
    end

    after(:each) do
        sleep 3
    end
end