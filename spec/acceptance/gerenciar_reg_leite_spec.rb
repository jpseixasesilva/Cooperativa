# coding: utf-8

require 'spec_helper'

feature 'gerenciar regleite' do

  scenario 'incluir regleite' do #, :javascript => true do

    presidente = FactoryGirl.create(:presidente, :nome => 'joao')

    cooperado = FactoryGirl.create(:cooperado, :nome => 'paulo')

    visit new_regleite_path

    preencher_e_verificar_regleite

    

  end

  scenario 'alterar regleite' do #, :javascript => true do

    presidente = FactoryGirl.create(:presidente, :nome => 'joao')
    
    cooperado = FactoryGirl.create(:cooperado, :nome => 'paulo')

    regleite = FactoryGirl.create(:regleite,:cooperado => cooperado, :presidente => presidente)    
    
    visit edit_regleite_path(regleite)

    preencher_e_verificar_regleite


  end

  scenario 'excluir regleite' do #, :javascript => true do

    presidente = FactoryGirl.create(:presidente, :nome => 'joao')

    cooperado = FactoryGirl.create(:cooperado, :nome => 'paulo')

    regleite = FactoryGirl.create(:regleite,:cooperado => cooperado, :presidente => presidente)

    visit regleites_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_regleite

    fill_in 'Qtdleite', :with => "100"
    fill_in 'Semana', :with => '1'
    
    select 'joao', :on => 'Presidente'
    select 'paulo', :on => 'Cooperado'
    
    click_button 'Salvar'
    page.should have_content 'Qtdleite: 100'
    page.should have_content 'Semana: 1'
    page.should have_content 'Presidente: joao'
    page.should have_content 'Cooperado: paulo'
  end

      

end
