require 'spec_helper'

describe "presidentes/new" do
  before(:each) do
    assign(:presidente, stub_model(Presidente,
      :nome => "MyString",
      :telefone => "MyString",
      :endereco => "MyString",
      :data => "MyString"
    ).as_new_record)
  end

  it "renders new presidente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => presidentes_path, :method => "post" do
      assert_select "input#presidente_nome", :name => "presidente[nome]"
      assert_select "input#presidente_telefone", :name => "presidente[telefone]"
      assert_select "input#presidente_endereco", :name => "presidente[endereco]"
      assert_select "input#presidente_data", :name => "presidente[data]"
    end
  end
end
