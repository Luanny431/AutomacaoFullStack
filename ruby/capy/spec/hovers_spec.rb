require './spec_helper'

describe 'Dinamic control' do

    before(:each) do
        visit '/hovers' 
    end

    it 'Quando passo o mouse sobre o blade' do        
       card = find('img[alt=Blade]')
       card.hover
       expect(page).to have_content 'Nome: Blade'
    end

    it 'Quando passo o mouse sobre a Patera Negra' do        
        card = find('img[alt="Pantera Negra"]')
        #quando tem caracteres especiais dentro das propriedades neve ser colocadas entre aspas, pois o capbara não reconhece
        card.hover
        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'Quando passo o mouse sobre o Homem Aranha' do        
        card = find('img[alt="Homem Aranha"]')
        card.hover
        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after(:each) do
        sleep 3
    end

end