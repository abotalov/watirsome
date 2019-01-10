require 'watir'
require 'pry'
require_relative '../lib/watirsome'

class WatirHelper
  class << self
    def browser
      @browser ||= Watir::Browser.new(:chrome)
    end
  end
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.disable_monkey_patching!
  # config.warnings = true

  config.default_formatter = 'doc' if config.files_to_run.one?

  # config.profile_examples = 10
  config.order = :random
  Kernel.srand config.seed

  config.after(:suite) do
    WatirHelper.browser.quit
  end
end