require 'spec_helper'

describe "interviews/edit.html.erb" do
  before(:each) do
    @interview = assign(:interview, stub_model(Interview,
      :new_record? => false,
      :name => "MyString",
      :total_exp => 1,
      :ror_exp => 1,
      :location => "MyString",
      :result => "MyString",
      :phoneNumber => "",
      :remarks => "MyText",
      :email => "MyText"
    ))
  end

  it "renders the edit interview form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => interview_path(@interview), :method => "post" do
      assert_select "input#interview_name", :name => "interview[name]"
      assert_select "input#interview_total_exp", :name => "interview[total_exp]"
      assert_select "input#interview_ror_exp", :name => "interview[ror_exp]"
      assert_select "input#interview_location", :name => "interview[location]"
      assert_select "input#interview_result", :name => "interview[result]"
      assert_select "input#interview_phoneNumber", :name => "interview[phoneNumber]"
      assert_select "textarea#interview_remarks", :name => "interview[remarks]"
      assert_select "textarea#interview_email", :name => "interview[email]"
    end
  end
end
