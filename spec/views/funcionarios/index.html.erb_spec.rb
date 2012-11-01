require 'spec_helper'

describe "funcionarios/index" do
  before(:each) do
    assign(:funcionarios, [
      stub_model(Funcionario,
        :nome => "Nome",
        :telefone => "Telefone",
        :endereco => "Endereco",
        :atribuicao => "Atribuicao",
        :salario => "Salario"
      ),
      stub_model(Funcionario,
        :nome => "Nome",
        :telefone => "Telefone",
        :endereco => "Endereco",
        :atribuicao => "Atribuicao",
        :salario => "Salario"
      )
    ])
  end

  it "renders a list of funcionarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Atribuicao".to_s, :count => 2
    assert_select "tr>td", :text => "Salario".to_s, :count => 2
  end
end
