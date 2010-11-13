require 'spec_helper'

describe "home/index.html.erb" do
  it "should have XP Manchester in a h1 tag" do
    render
    rendered.should have_selector("h1", :content => "XP Manchester")
  end
  
  it "should have a link to the mailing list" do
    render
    rendered.should have_selector("a", 
      :content => "mailing list",
      :href => "https://groups.google.com/group/xp-manchester?hl=en")
  end
end
