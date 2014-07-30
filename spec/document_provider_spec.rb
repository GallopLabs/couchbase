require "spec_helper"
require "document_provider"
require "document_resource"

describe Chef::Provider::CouchbaseDocument do
  let(:provider) { described_class.new new_resource, double("run_context") }

  let :new_resource do
    double({ name: "mah_document" })
  end

  describe ".ancestors" do
    it { described_class.ancestors.should include Chef::Provider }
  end

  describe "#current_resource" do
    let(:current_resource) { provider.tap(&:load_current_resource).current_resource }

    context "when a couchbase document does not exist" do
      it { current_resource.should be_a_kind_of Chef::Resource::CouchbaseDocument }
    end
  end
end
