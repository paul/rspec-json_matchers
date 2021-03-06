# frozen_string_literal: true

module RSpec::ResemblesJsonMatchers
  class ResemblesStringMatcher
    def self.can_match?(string)
      string.is_a? String
    end

    attr_reader :expected

    def initialize(expected)
      @expected = expected
    end

    def description
      "resemble text #{@expected.inspect}"
    end

    # TODO make sure the lengths are kinda the same? Levenschtien distances?
    def matches?(actual)
      self.class.can_match?(actual)
    end
  end
end
