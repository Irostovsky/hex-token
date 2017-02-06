require "spec_helper"

RSpec.describe Hex::Token do
  it "has a version number" do
    expect(Hex::Token::VERSION).not_to be nil
  end

  it "generate" do
    expect(Tokenized.new.hex_token).not_to eq nil
  end
end

class Tokenized
  include Hex::Token
end