module KnapsackPro
  module Client
    module API
      module V1
        class BuildDistributions < Base
          class << self
            def subset(args)
              action_class.new(
                endpoint_path: '/v1/build_distributions/subset',
                http_method: :post,
                request_hash: {
                  :commit_hash => args.fetch(:commit_hash),
                  :branch => args.fetch(:branch),
                  :node_total => args.fetch(:node_total),
                  :node_index => args.fetch(:node_index),
                  :test_files => args.fetch(:test_files)
                }
              )
            end
          end
        end
      end
    end
  end
end
