require 'spec_helper'

describe "produtos/show" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :nome => "Nome",
      :tipo => "Tipo",
      :validade => "Validade",
      :lote => "Lote",
      :preco => "Preco"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Tipo/)
    rendered.should match(/Validade/)
    rendered.should match(/Lote/)
    rendered.should match(/Preco/)
  end
end
