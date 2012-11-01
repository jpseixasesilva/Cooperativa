# coding: utf-8

require 'spec_helper'

feature 'gerenciar regtransporte' do

  scenario 'incluir regtransporte' do #, :javascript => true do

    presidente = FactoryGirl.create(:presidente, :nome => 'joao')

    funcionario = FactoryGirl.create(:funcionario, :nome => 'paulo')

    transporte = FactoryGirl.create(:transporte, :placa => 'xxxx')

    produto = FactoryGirl.create(:produto, :nome => 'yyyy')

    visit new_regtransporte_path

    preencher_e_verificar_regtransporte

    
  end

  scenario 'alterar regtransporte' do #, :javascript => true do

    presidente = FactoryGirl.create(:presidente, :nome => 'joao')
    
    funcionario = FactoryGirl.create(:funcionario, :nome => 'paulo')

    transporte = FactoryGirl.create(:transporte, :placa => 'xxxx')

    produto = FactoryGirl.create(:produto, :nome => 'yyyy')

    regtransporte = FactoryGirl.create(:regtransporte,:presidente => presidente, :funcionario => funcionario, :transporte => transporte, :produto => produto)    
    
    visit edit_regtransporte_path(regtransporte)

    preencher_e_verificar_regtransporte


  end

  scenario 'excluir regtransporte' do #, :javascript => true do

    presidente = FactoryGirl.create(:presidente, :nome => 'joao')
    
    funcionario = FactoryGirl.create(:funcionario, :nome => 'paulo')

    transporte = FactoryGirl.create(:transporte, :placa => 'xxxx')

    produto = FactoryGirl.create(:produto, :nome => 'yyyy')

    regtransporte = FactoryGirl.create(:regtransporte,:presidente => presidente, :funcionario => funcionario, :transporte => transporte, :produto => produto) 

    visit regtransportes_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_regtransporte

    select 'joao', :on => 'Presidente'
    select 'paulo', :on => 'Funcionario'
    select 'xxxx', :on => 'Placa'
    select 'yyyy', :on => 'Produto'
    
    click_button 'Salvar'
    
    page.should have_content 'Presidente: joao'
    page.should have_content 'Funcionario: paulo'
    page.should have_content 'Transporte: xxxx'
    page.should have_content 'Produto: yyyy'

  end

      

end
