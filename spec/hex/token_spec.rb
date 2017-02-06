require "spec_helper"

RSpec.describe Hex::Token do
  it "has a version number" do
    expect(Hex::Token::VERSION).not_to be nil
  end

  it "generate" do
    expect(Tokenized.new.hex_token).not_to eq nil
  end

  it "generate uniq" do
    obj = Tokenized.new
    t1 = obj.hex_token
    t2 = obj.hex_token
    expect(t2).not_to eq t1
  end
end

class Tokenized
  include Hex::Token
end