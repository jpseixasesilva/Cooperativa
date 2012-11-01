# coding: utf-8

require 'spec_helper'

feature 'gerenciar cooperado' do

  scenario 'incluir cooperado' do # , :js => true do

    visit new_cooperado_path

    preencher_e_verificar_cooperado

    

  end

  scenario 'alterar cooperado' do #, :js => true do

    cooperado = FactoryGirl.create(:cooperado)

    visit edit_cooperado_path(cooperado)

    preencher_e_verificar_cooperado



  end

   scenario 'excluir cooperado' do #, :javascript => true do

       cooperado = FactoryGirl.create(:cooperado) # no inicio estava funcao ao inves de presidente

        visit cooperados_path     # aqui estava peças ao inves de peca, ae colokei presidentes ao inves de presidente

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_cooperado
     
      fill_in 'Nome', :with => "carlos"
      fill_in 'Telefone', :with => "123"
      fill_in 'Endereco', :with => "rua x"
      fill_in 'Data', :with => "15/12/2011"
      

   
 
      click_button 'Salvar'

      page.should have_content 'Nome: carlos'
      page.should have_content 'Telefone: 123'
      page.should have_content 'Endereco: rua x'
      page.should have_content 'Data: 15/12/2011'
      
   end
end
