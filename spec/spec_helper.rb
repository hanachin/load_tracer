require "bundler/setup"
require "load_tracer"

module SpecHelpers
  def file_names(paths)
    paths.map { |path| File.basename(path) }
  end

  def search_file_spec_by_name(name)
  end
end

RSpec.configure do |config|
  config.include(SpecHelpers)

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
