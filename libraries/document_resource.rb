require "chef/resource"

class Chef
  class Resource
    class CouchbaseDocument < Resource
      def initialize(*)
        super
        @resource_name = :couchbase_document
        @action = :create
        @allowed_actions.push(:create)
      end

      def create(*)
      end
    end
  end
end
