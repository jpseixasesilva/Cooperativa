require 'spec_helper'

describe "presidentes/edit" do
  before(:each) do
    @presidente = assign(:presidente, stub_model(Presidente,
      :nome => "MyString",
      :telefone => "MyString",
      :endereco => "MyString",
      :data => "MyString"
    ))
  end

  it "renders the edit presidente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => presidentes_path(@presidente), :method => "post" do
      assert_select "input#presidente_nome", :name => "presidente[nome]"
      assert_select "input#presidente_telefone", :name => "presidente[telefone]"
      assert_select "input#presidente_endereco", :name => "presidente[endereco]"
      assert_select "input#presidente_data", :name => "presidente[data]"
    end
  end
end
