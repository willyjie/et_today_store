# frozen_string_literal: true

require "vcr"

VCR.configure do |config|
  config.cassette_library_dir = "spec/support/fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.ignore_localhost = true
  config.default_cassette_options = {
    record: :none,
    # prevent CI from recording, to record VCR, add `record: :new_episodes` to the use_cassette options
  }
end
