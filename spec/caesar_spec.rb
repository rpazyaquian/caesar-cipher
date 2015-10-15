require 'spec_helper'
require_relative "../caesar.rb"

describe "#encrypt" do
  describe "basic encryption" do
    let(:plain_alphabet) { ("a".."z").to_a }
    let(:string) { "the quick brown fox jumped over the lazy dog" }
    let(:rotation) { 3 }
    let(:encrypted_string) { "wkh txlfn eurzq ira mxpshg ryhu wkh odcb grj" }
    let(:rot13_string) { "gur dhvpx oebja sbk whzcrq bire gur ynml qbt" }

    it "encrypts a string" do
      expect(encrypt(string, plain_alphabet, rotation)).to eq encrypted_string
    end

    it "defaults to rot13" do
      expect(encrypt(string, plain_alphabet)).to eq rot13_string
    end

    context "with mixed case" do
      let(:mixed_case_string) { "The Quick Brown Fox jumped over the Lazy Dog" }
      let(:encrypted_mixed_case_string) { "Wkh Txlfn Eurzq Ira mxpshg ryhu wkh Odcb Grj" }

      it "preserves case" do
        expect(encrypt(mixed_case_string, plain_alphabet, rotation)).to eq encrypted_mixed_case_string
      end
    end

    context "with punctuation" do
      let(:string_with_punctuation) { "...the quick brown fox - jumped over the lazy dog!" }
      let(:encrypted_string_with_punctuation) { "...wkh txlfn eurzq ira - mxpshg ryhu wkh odcb grj!" }

      it "preserves punctuation" do
        expect(encrypt(string_with_punctuation, plain_alphabet, rotation)).to eq encrypted_string_with_punctuation
      end
    end

    context "with variable rotation" do
      let(:short_rotation) { 1 }
      let(:encrypted_string_short) { "uif rvjdl cspxo gpy kvnqfe pwfs uif mbaz eph" }
      let(:long_rotation) { 13 }
      let(:encrypted_string_long) { "gur dhvpx oebja sbk whzcrq bire gur ynml qbt" }
      let(:negative_rotation) { -1 }
      let(:encrypted_string_negative) { "sgd pthbj aqnvm enw itlodc nudq sgd kzyx cnf" }
      let(:ridiculous_rotation) { (26 * 5) }
      let(:encrypted_string_ridiculous) { "the quick brown fox jumped over the lazy dog" }

      it "accepts a rotation vector" do
        expect(encrypt(string, plain_alphabet, short_rotation)).to eq encrypted_string_short
        expect(encrypt(string, plain_alphabet, long_rotation)).to eq encrypted_string_long
        expect(encrypt(string, plain_alphabet, negative_rotation)).to eq encrypted_string_negative
        expect(encrypt(string, plain_alphabet, ridiculous_rotation)).to eq encrypted_string_ridiculous
      end
    end
  end
end
