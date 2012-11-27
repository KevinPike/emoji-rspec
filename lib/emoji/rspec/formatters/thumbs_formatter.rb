require 'rspec/core/formatters/base_text_formatter'

module Emoji
  module RSpec
    module Formatters

      class ThumbsFormatter < ::RSpec::Core::Formatters::BaseTextFormatter
        def example_passed(example)
          super(example)
          output.print green "\u{1f44d} "
        end

        def example_failed(example)
          super(example)
          output.print red "\u{1f44e} "
        end

        def example_pending(example)
          super(example)
          output.print yellow "\u{270b} "
        end
      end

    end
  end
end
