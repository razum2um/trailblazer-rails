# frozen_string_literal: true

module Params
  class WithArgs < Trailblazer::Operation
    step ->(context, **) { context[:x] = %(#{context[:params]} #{context[:current_user]}) }
  end
end
