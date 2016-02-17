require "./spec_helper"

# This causes an issue
require "http/request"

describe Lib::Conflicts do
  it "does not conflict" do
    Lib::Conflicts.test.should eq("dedcb44567ed0a514403cf927c9dcc47dd09b9a1ee9bcac8ae24efb8deb8d392")
  end
end
