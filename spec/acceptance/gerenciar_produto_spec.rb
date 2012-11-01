# coding: utf-8

require 'spec_helper'

feature 'gerenciar produto' do

  scenario 'incluir produto' do # , :js => true do

    visit new_produto_path

    preencher_e_verificar_produto

    

  end

  scenario 'alterar produto' do #, :js => true do

    produto = FactoryGirl.create(:produto)

    visit edit_produto_path(produto)

    preencher_e_verificar_produto



  end

   scenario 'excluir produto' do #, :javascript => true do

       produto = FactoryGirl.create(:produto) 

        visit produtos_path     

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_produto
     
      fill_in 'Nome', :with => "leite"
      fill_in 'Tipo', :with => "integral"
      fill_in 'Validade', :with => "15/12/2012"
      fill_in 'Lote', :with => "1234"
      fill_in 'Preco', :with => "60"

   
 
      click_button 'Salvar'

      page.should have_content 'Nome: leite'
      page.should have_content 'Tipo: integral'
      page.should have_content 'Validade: 15/12/2012'
      page.should have_content 'Lote: 1234'
      page.should have_content 'Preco: 60'
      
      

   end
end
