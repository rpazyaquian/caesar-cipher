require 'spec_helper'
require_relative "../caesar.rb"

describe "#encrypt" do
  let(:string) { "the quick brown fox jumped over the lazy dog"}
  let(:encrypted_string) { "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald" }

  it "encrypts a string" do
    expect(encrypt(string)).to eq encrypted_string
  end
end
