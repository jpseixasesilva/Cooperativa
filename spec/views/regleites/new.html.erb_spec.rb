require 'spec_helper'

describe "regleites/new" do
  before(:each) do
    assign(:regleite, stub_model(Regleite,
      :presidente => nil,
      :cooperado => nil,
      :qtdleite => "MyString",
      :semana => "MyString"
    ).as_new_record)
  end

  it "renders new regleite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => regleites_path, :method => "post" do
      assert_select "input#regleite_presidente", :name => "regleite[presidente]"
      assert_select "input#regleite_cooperado", :name => "regleite[cooperado]"
      assert_select "input#regleite_qtdleite", :name => "regleite[qtdleite]"
      assert_select "input#regleite_semana", :name => "regleite[semana]"
    end
  end
end
