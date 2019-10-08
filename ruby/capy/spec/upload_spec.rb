require './spec_helper'

describe 'Upload de arquivos' do

    before(:each) do
        visit '/upload' 
        @arquivo = Dir.pwd + '/fixtures/teste.txt'
        @imagem = Dir.pwd + '/fixtures/imagem.jpg'
    end

    it 'upload com arquivo texto' do        
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        
        expect(div_arquivo.text).to eql 'teste.txt'
    end

    it 'upload com imagem' do        
        attach_file('file-upload', @imagem)
        click_button 'Upload'

        #sleep 5  não é uma boa prática
        #Capybara.defaut_max_wait_time tempo default é de até 2 segundos. configurado no helper tempo de até 5 segundos

        img = find('#new-image')

        expect(img[:src]).to include '/uploads/imagem.jpg'
    end

    after(:each) do
        sleep 3
    end
end