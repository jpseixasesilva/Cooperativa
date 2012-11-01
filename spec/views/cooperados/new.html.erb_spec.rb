require 'spec_helper'

describe "cooperados/new" do
  before(:each) do
    assign(:cooperado, stub_model(Cooperado,
      :nome => "MyString",
      :telefone => "MyString",
      :endereco => "MyString",
      :data => "MyString"
    ).as_new_record)
  end

  it "renders new cooperado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cooperados_path, :method => "post" do
      assert_select "input#cooperado_nome", :name => "cooperado[nome]"
      assert_select "input#cooperado_telefone", :name => "cooperado[telefone]"
      assert_select "input#cooperado_endereco", :name => "cooperado[endereco]"
      assert_select "input#cooperado_data", :name => "cooperado[data]"
    end
  end
end
