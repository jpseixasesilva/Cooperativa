require 'spec_helper'

describe "transportes/index" do
  before(:each) do
    assign(:transportes, [
      stub_model(Transporte,
        :placa => "Placa",
        :chassi => "Chassi",
        :cor => "Cor"
      ),
      stub_model(Transporte,
        :placa => "Placa",
        :chassi => "Chassi",
        :cor => "Cor"
      )
    ])
  end

  it "renders a list of transportes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Placa".to_s, :count => 2
    assert_select "tr>td", :text => "Chassi".to_s, :count => 2
    assert_select "tr>td", :text => "Cor".to_s, :count => 2
  end
end
