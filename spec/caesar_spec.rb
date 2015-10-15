require 'spec_helper'
require_relative "../caesar.rb"

describe "#encrypt" do
  describe "basic encryption" do
    let(:string) { "the quick brown fox jumped over the lazy dog" }
    let(:rotation) { 3 }
    let(:encrypted_string) { "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald" }

    it "encrypts a string" do
      expect(encrypt(string, 3)).to eq encrypted_string
    end

    context "with mixed case" do
      let(:mixed_case_string) { "The Quick Brown Fox jumped over the Lazy Dog" }
      let(:encrypted_mixed_case_string) { "The Quick Brown Fox jumped over the Lazy Dog" }

      it "preserves case" do
        expect(encrypt(mixed_case_string, 3)).to eq encrypted_mixed_case_string
      end
    end
  end
end
