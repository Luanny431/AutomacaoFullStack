require './spec_helper'

describe 'Dinamic control' do

    before(:each) do
        visit '/dynamic_controls' 
    end

    it 'quando desabilita o campo' do        

        #quando tem a propriedade disabled true o campo está desabilitado. 
        #quando tem a propriedade disabled false o campo está habilitado. 

        res = page.has_field? 'movie', disabled: true
        puts res
        #perguntando se existe um campo com id movie e a propriedade disable

        click_button 'Habilita'

        res = page.has_field? 'movie', disabled: false
        puts res

    end

    
    after(:each) do
        sleep 3
    end
end