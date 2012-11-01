require 'spec_helper'

describe "produtos/index" do
  before(:each) do
    assign(:produtos, [
      stub_model(Produto,
        :nome => "Nome",
        :tipo => "Tipo",
        :validade => "Validade",
        :lote => "Lote",
        :preco => "Preco"
      ),
      stub_model(Produto,
        :nome => "Nome",
        :tipo => "Tipo",
        :validade => "Validade",
        :lote => "Lote",
        :preco => "Preco"
      )
    ])
  end

  it "renders a list of produtos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Validade".to_s, :count => 2
    assert_select "tr>td", :text => "Lote".to_s, :count => 2
    assert_select "tr>td", :text => "Preco".to_s, :count => 2
  end
end
