# frozen_string_literal: true

require "ougai"

require "sparrow/cloud_build"
require "sparrow/jobs"
require "sparrow/master"
require "sparrow/pub_sub_gateway"
require "sparrow/version"
require "sparrow/worker"

# Not to buffer logs.
STDOUT.sync = true

# @private
module Sparrow
  class Error < StandardError; end

  def self.logger
    @logger ||= Ougai::Logger.new(STDOUT)
  end
end
