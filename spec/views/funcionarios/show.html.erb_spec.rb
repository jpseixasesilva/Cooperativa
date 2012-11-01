require 'spec_helper'

describe "funcionarios/show" do
  before(:each) do
    @funcionario = assign(:funcionario, stub_model(Funcionario,
      :nome => "Nome",
      :telefone => "Telefone",
      :endereco => "Endereco",
      :atribuicao => "Atribuicao",
      :salario => "Salario"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Telefone/)
    rendered.should match(/Endereco/)
    rendered.should match(/Atribuicao/)
    rendered.should match(/Salario/)
  end
end
