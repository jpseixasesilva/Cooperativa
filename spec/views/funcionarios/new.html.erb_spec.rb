require 'spec_helper'

describe "funcionarios/new" do
  before(:each) do
    assign(:funcionario, stub_model(Funcionario,
      :nome => "MyString",
      :telefone => "MyString",
      :endereco => "MyString",
      :atribuicao => "MyString",
      :salario => "MyString"
    ).as_new_record)
  end

  it "renders new funcionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => funcionarios_path, :method => "post" do
      assert_select "input#funcionario_nome", :name => "funcionario[nome]"
      assert_select "input#funcionario_telefone", :name => "funcionario[telefone]"
      assert_select "input#funcionario_endereco", :name => "funcionario[endereco]"
      assert_select "input#funcionario_atribuicao", :name => "funcionario[atribuicao]"
      assert_select "input#funcionario_salario", :name => "funcionario[salario]"
    end
  end
end
