require "chef/provider"

class Chef
  class Provider
    class CouchbaseDocument < Provider

      def load_current_resource
        @current_resource = Resource::CouchbaseDocument.new(@new_resource.name)
      end

    end
  end
end
