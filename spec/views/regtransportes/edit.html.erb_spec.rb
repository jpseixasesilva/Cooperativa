require 'spec_helper'

describe "regtransportes/edit" do
  before(:each) do
    @regtransporte = assign(:regtransporte, stub_model(Regtransporte,
      :presidente => nil,
      :funcionario => nil,
      :transporte => nil,
      :produto => nil
    ))
  end

  it "renders the edit regtransporte form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => regtransportes_path(@regtransporte), :method => "post" do
      assert_select "input#regtransporte_presidente", :name => "regtransporte[presidente]"
      assert_select "input#regtransporte_funcionario", :name => "regtransporte[funcionario]"
      assert_select "input#regtransporte_transporte", :name => "regtransporte[transporte]"
      assert_select "input#regtransporte_produto", :name => "regtransporte[produto]"
    end
  end
end
