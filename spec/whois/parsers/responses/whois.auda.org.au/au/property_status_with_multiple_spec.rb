# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.auda.org.au/au/property_status_with_multiple.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.auda.org.au.rb'

describe Whois::Parsers::WhoisAudaOrgAu, "property_status_with_multiple.expected" do

  subject do
    file = fixture("responses", "whois.auda.org.au/au/property_status_with_multiple.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#status" do
    it do
      expect(subject.status).to eq(
        ["serverRenewProhibited https://afilias.com.au/get-au/whois-status-codes#serverRenewProhibited"]
      )
    end
  end
end
