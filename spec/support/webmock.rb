# frozen_string_literal: true

require "webmock"
require "webmock/rspec"

WebMock.disable_net_connect!(allow_localhost: true)
