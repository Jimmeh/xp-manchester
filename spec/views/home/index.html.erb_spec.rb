require 'spec_helper'

describe "home/index.html.erb" do
  it "should have link to madlab website" do
    render
    rendered.should have_selector("a",
      :href => "http://www.madlab.org.uk",
      :content => "MadLab, the Northern Quarter")
  end
  
  it "should have link to c2.com xp site" do
    render
    rendered.should have_selector("a",
      :href => "http://c2.com/cgi/wiki?ExtremeProgramming",
      :content => "see here")
  end
end
