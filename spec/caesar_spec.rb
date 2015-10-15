require 'spec_helper'
require_relative "../caesar.rb"

describe "#encrypt" do
  describe "basic encryption" do
    let(:string) { "the quick brown fox jumped over the lazy dog" }
    let(:rotation) { 3 }
    let(:encrypted_string) { "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald" }

    it "encrypts a string" do
      expect(encrypt(string, rotation)).to eq encrypted_string
    end

    context "with mixed case" do
      let(:mixed_case_string) { "The Quick Brown Fox jumped over the Lazy Dog" }
      let(:encrypted_mixed_case_string) { "The Quick Brown Fox jumped over the Lazy Dog" }

      it "preserves case" do
        expect(encrypt(mixed_case_string, rotation)).to eq encrypted_mixed_case_string
      end
    end

    context "with punctuation" do
      let(:string_with_punctuation) { "...the quick brown fox - jumped over the lazy dog!" }
      let(:encrypted_string_with_punctuation) { "...qeb nrfzh yoltk clu - grjmp lsbo qeb ixwv ald!" }

      it "preserves punctuation" do
        expect(encrypt(string_with_punctuation, rotation)).to eq encrypted_string_with_punctuation
      end
    end
  end
end
