require 'spec_helper'

describe "funcionarios/edit" do
  before(:each) do
    @funcionario = assign(:funcionario, stub_model(Funcionario,
      :nome => "MyString",
      :telefone => "MyString",
      :endereco => "MyString",
      :atribuicao => "MyString",
      :salario => "MyString"
    ))
  end

  it "renders the edit funcionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => funcionarios_path(@funcionario), :method => "post" do
      assert_select "input#funcionario_nome", :name => "funcionario[nome]"
      assert_select "input#funcionario_telefone", :name => "funcionario[telefone]"
      assert_select "input#funcionario_endereco", :name => "funcionario[endereco]"
      assert_select "input#funcionario_atribuicao", :name => "funcionario[atribuicao]"
      assert_select "input#funcionario_salario", :name => "funcionario[salario]"
    end
  end
end
