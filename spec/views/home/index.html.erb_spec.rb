require 'spec_helper'

describe "home/index.html.erb" do
  it "should have link to madlab website" do
    render
    rendered.should have_selector("a",
      :href => "http://www.madlab.org.uk",
      :content => "MadLab, the Northern Quarter")
  end
end
