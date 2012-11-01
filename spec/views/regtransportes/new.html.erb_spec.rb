require 'spec_helper'

describe "regtransportes/new" do
  before(:each) do
    assign(:regtransporte, stub_model(Regtransporte,
      :presidente => nil,
      :funcionario => nil,
      :transporte => nil,
      :produto => nil
    ).as_new_record)
  end

  it "renders new regtransporte form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => regtransportes_path, :method => "post" do
      assert_select "input#regtransporte_presidente", :name => "regtransporte[presidente]"
      assert_select "input#regtransporte_funcionario", :name => "regtransporte[funcionario]"
      assert_select "input#regtransporte_transporte", :name => "regtransporte[transporte]"
      assert_select "input#regtransporte_produto", :name => "regtransporte[produto]"
    end
  end
end
