# coding: utf-8

require 'spec_helper'

feature 'gerenciar transporte' do

  scenario 'incluir transporte' do # , :js => true do

    visit new_transporte_path

    preencher_e_verificar_transporte

    

  end

  scenario 'alterar transporte' do #, :js => true do

    transporte = FactoryGirl.create(:transporte)

    visit edit_transporte_path(transporte)

    preencher_e_verificar_transporte



  end

   scenario 'excluir transporte' do #, :javascript => true do

       transporte = FactoryGirl.create(:transporte) # no inicio estava funcao ao inves de presidente

        visit transportes_path     # aqui estava peças ao inves de peca, ae colokei presidentes ao inves de presidente

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_transporte
     
      fill_in 'Placa', :with => "1234"
      fill_in 'Chassi', :with => "4321"
      fill_in 'Cor', :with => "preto"
      
   
 
      click_button 'Salvar'

      page.should have_content 'Placa: 1234'
      page.should have_content 'Chassi: 4321'
      page.should have_content 'Cor: preto'
           

   end
end
