require './spec_helper'

describe 'Forms' do

    it 'Login com sucesso' do
        visit '/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        #através do fill_in consigo preencher elementos pelo id ou pelo name
        #no exemplo acima estamos usando o name. 

        click_button 'Login'

        expect(find('#flash').visible?).to be true

       # puts find('#flash').text

        #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

        #eql compara se são identicos
        #include no lugar de eql para indicar que contém 
        #to have_content mesma funcao do include
    end

    it 'Login com senha incorreta' do
        visit '/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Senha é invalida!'
    end

    it 'Usuario nao cadastrado' do
        visit '/login'

        fill_in 'username', with: 'starks'
        fill_in 'password', with: 'jarvis'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end
end