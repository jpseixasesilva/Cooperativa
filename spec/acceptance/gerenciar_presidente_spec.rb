# coding: utf-8

require 'spec_helper'

feature 'gerenciar presidente' do

  scenario 'incluir presidente' do # , :js => true do

    visit new_presidente_path

    preencher_e_verificar_presidente

    

  end

  scenario 'alterar presidente' do #, :js => true do

    presidente = FactoryGirl.create(:presidente)

    visit edit_presidente_path(presidente)

    preencher_e_verificar_presidente



  end

   scenario 'excluir presidente' do #, :javascript => true do

       presidente = FactoryGirl.create(:presidente)

        visit presidentes_path     

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_presidente
     
      fill_in 'Nome', :with => "joao"
      fill_in 'Telefone', :with => "27585385"
      fill_in 'Endereco', :with => "rua frei vitorio"
      fill_in 'Data', :with => "1234"
  
 
      click_button 'Salvar'

      page.should have_content 'Nome: joao'
      page.should have_content 'Telefone: 27585385'
      page.should have_content 'Endereco: rua frei vitorio'
      page.should have_content 'Data: 1234'      
      

   end
end
