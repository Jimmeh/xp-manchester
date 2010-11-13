require 'spec_helper'

describe "home/index.html.erb" do
  it "should have XP Manchester in a h1 tag" do
    render
    rendered.should have_selector("h1", :content => "XP Manchester")
  end
end
