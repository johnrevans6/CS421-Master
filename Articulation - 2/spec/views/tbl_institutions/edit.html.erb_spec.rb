require 'spec_helper'

describe "tbl_institutions/edit" do
  before(:each) do
    @tbl_institution = assign(:tbl_institution, stub_model(TblInstitution,
      :institution_name => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :website => "MyString"
    ))
  end

  it "renders the edit tbl_institution form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tbl_institution_path(@tbl_institution), "post" do
      assert_select "input#tbl_institution_institution_name[name=?]", "tbl_institution[institution_name]"
      assert_select "input#tbl_institution_city[name=?]", "tbl_institution[city]"
      assert_select "input#tbl_institution_state[name=?]", "tbl_institution[state]"
      assert_select "input#tbl_institution_zip[name=?]", "tbl_institution[zip]"
      assert_select "input#tbl_institution_website[name=?]", "tbl_institution[website]"
    end
  end
end
