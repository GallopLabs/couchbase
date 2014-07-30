require "spec_helper"
require "document_provider"

describe Chef::Provider::CouchbaseDocument do

  describe ".ancestors" do
    it { described_class.ancestors.should include Chef::Provider }
  end

end
