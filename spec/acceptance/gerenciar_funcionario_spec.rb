# coding: utf-8

require 'spec_helper'

feature 'gerenciar funcionario' do

  scenario 'incluir funcionario' do # , :js => true do

    visit new_funcionario_path

    preencher_e_verificar_funcionario

    

  end

  scenario 'alterar funcionario' do #, :js => true do

    funcionario = FactoryGirl.create(:funcionario)

    visit edit_funcionario_path(funcionario)

    preencher_e_verificar_funcionario



  end

   scenario 'excluir funcionario' do #, :javascript => true do

       funcionario = FactoryGirl.create(:funcionario) # no inicio estava funcao ao inves de presidente

        visit funcionarios_path     # aqui estava peças ao inves de peca, ae colokei presidentes ao inves de presidente

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_funcionario
     
      fill_in 'Nome', :with => "paulo"
      fill_in 'Telefone', :with => "99733954"
      fill_in 'Endereco', :with => "rua frei angelo"
      fill_in 'Atribuicao', :with => "sg"
      fill_in 'Salario', :with => "720"

   
 
      click_button 'Salvar'

      page.should have_content 'Nome: paulo'
      page.should have_content 'Telefone: 99733954'
      page.should have_content 'Endereco: rua frei angelo'
      page.should have_content 'Atribuicao: sg'
      page.should have_content 'Salario: 720'
      
      

   end
end
