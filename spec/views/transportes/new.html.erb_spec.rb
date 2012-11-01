require 'spec_helper'

describe "transportes/new" do
  before(:each) do
    assign(:transporte, stub_model(Transporte,
      :placa => "MyString",
      :chassi => "MyString",
      :cor => "MyString"
    ).as_new_record)
  end

  it "renders new transporte form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transportes_path, :method => "post" do
      assert_select "input#transporte_placa", :name => "transporte[placa]"
      assert_select "input#transporte_chassi", :name => "transporte[chassi]"
      assert_select "input#transporte_cor", :name => "transporte[cor]"
    end
  end
end
