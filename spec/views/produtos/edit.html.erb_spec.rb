require 'spec_helper'

describe "produtos/edit" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :nome => "MyString",
      :tipo => "MyString",
      :validade => "MyString",
      :lote => "MyString",
      :preco => "MyString"
    ))
  end

  it "renders the edit produto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => produtos_path(@produto), :method => "post" do
      assert_select "input#produto_nome", :name => "produto[nome]"
      assert_select "input#produto_tipo", :name => "produto[tipo]"
      assert_select "input#produto_validade", :name => "produto[validade]"
      assert_select "input#produto_lote", :name => "produto[lote]"
      assert_select "input#produto_preco", :name => "produto[preco]"
    end
  end
end
