require 'spec_helper'

describe "transportes/show" do
  before(:each) do
    @transporte = assign(:transporte, stub_model(Transporte,
      :placa => "Placa",
      :chassi => "Chassi",
      :cor => "Cor"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Placa/)
    rendered.should match(/Chassi/)
    rendered.should match(/Cor/)
  end
end
