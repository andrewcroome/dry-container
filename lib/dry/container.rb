require 'thread_safe'
require 'dry/container/error'
require 'dry/container/item'
require 'dry/container/mixin'
require 'dry/container/version'

module Dry
  # Inversion of Control (IoC) container
  #
  # @example
  #
  #   container = Dry::Container.new
  #   container.register(:item, 'item')
  #   container.resolve(:item)
  #   => 'item'
  #
  #   container.register(:item1, -> { 'item' })
  #   container.resolve(:item1)
  #   => 'item'
  #
  #   container.register(:item2, -> { 'item' }, call: false)
  #   container.resolve(:item2)
  #   => #<Proc:0x007f33b169e998@(irb):10 (lambda)>
  #
  # @api public
  class Container
    include Mixin
  end
end
