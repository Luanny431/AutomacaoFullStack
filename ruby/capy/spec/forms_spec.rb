describe 'Forms' do

    it 'Login com sucesso' do
        visit '/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        #através do fill_in consigo preencher elementos pelo id ou pelo name
        #no exemplo acima estamos usando o name. 

        click_button 'Login'

        expect(find('#flash').visible?).to be true

    #    puts find('#flash').text

         expect(find('#flash').text).to eql 'Olá, Tony Stark. Você acesso a área logado.'
    end
end