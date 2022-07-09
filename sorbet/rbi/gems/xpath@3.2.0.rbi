# typed: false

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `xpath` gem.
# Please instead update this file by running `bin/tapioca gem xpath`.

module XPath
  include ::XPath::DSL
  extend ::XPath::DSL

  class << self
    # @yield [_self]
    # @yieldparam _self [XPath] the object that the method was called on
    def generate; end
  end
end

module XPath::DSL
  def !(*args); end
  def !=(rhs); end
  def %(rhs); end
  def &(rhs); end
  def *(rhs); end
  def +(*expressions); end
  def /(rhs); end
  def <(rhs); end
  def <=(rhs); end
  def ==(rhs); end
  def >(rhs); end
  def >=(rhs); end
  def [](expression); end
  def ancestor(*element_names); end
  def ancestor_or_self(*element_names); end
  def and(rhs); end
  def anywhere(*expressions); end
  def attr(expression); end
  def attribute(*element_names); end
  def axis(name, *element_names); end
  def binary_operator(name, rhs); end
  def boolean(*args); end
  def ceiling(*args); end
  def child(*expressions); end
  def concat(*args); end
  def contains(*args); end
  def contains_word(word); end
  def count(*args); end
  def css(selector); end
  def current; end
  def descendant(*expressions); end
  def descendant_or_self(*element_names); end
  def divide(rhs); end
  def ends_with(suffix); end
  def equals(rhs); end
  def false(*args); end
  def floor(*args); end
  def following(*element_names); end
  def following_sibling(*element_names); end
  def function(name, *arguments); end
  def gt(rhs); end
  def gte(rhs); end
  def id(*args); end
  def inverse(*args); end
  def is(expression); end
  def join(*expressions); end
  def lang(*args); end
  def last; end
  def local_name(*args); end
  def lowercase; end
  def lt(rhs); end
  def lte(rhs); end
  def method(name, *arguments); end
  def minus(rhs); end
  def mod(rhs); end
  def multiply(rhs); end
  def n(*args); end
  def namespace(*element_names); end
  def namespace_uri(*args); end
  def next_sibling(*expressions); end
  def normalize(*args); end
  def normalize_space(*args); end
  def not(*args); end
  def not_equals(rhs); end
  def number(*args); end
  def one_of(*expressions); end
  def or(rhs); end
  def parent(*element_names); end
  def plus(rhs); end
  def position; end
  def preceding(*element_names); end
  def preceding_sibling(*element_names); end
  def previous_sibling(*expressions); end
  def qname; end
  def round(*args); end
  def self(*element_names); end
  def self_axis(*element_names); end
  def starts_with(*args); end
  def string(*args); end
  def string_length(*args); end
  def substring(*args); end
  def substring_after(*args); end
  def substring_before(*args); end
  def sum(*args); end
  def text; end
  def translate(*args); end
  def true(*args); end
  def union(*expressions); end
  def uppercase; end
  def where(expression); end
  def |(rhs); end
  def ~(*args); end
end

XPath::DSL::AXES = T.let(T.unsafe(nil), Array)
XPath::DSL::LOWERCASE_LETTERS = T.let(T.unsafe(nil), String)
XPath::DSL::METHODS = T.let(T.unsafe(nil), Array)
XPath::DSL::OPERATORS = T.let(T.unsafe(nil), Array)
XPath::DSL::UPPERCASE_LETTERS = T.let(T.unsafe(nil), String)

class XPath::Expression
  include ::XPath::DSL

  # @return [Expression] a new instance of Expression
  def initialize(expression, *arguments); end

  # Returns the value of attribute arguments.
  def arguments; end

  # Sets the attribute arguments
  #
  # @param value the value to set the attribute arguments to.
  def arguments=(_arg0); end

  def current; end

  # Returns the value of attribute expression.
  def expression; end

  # Sets the attribute expression
  #
  # @param value the value to set the attribute expression to.
  def expression=(_arg0); end

  def to_s(type = T.unsafe(nil)); end
  def to_xpath(type = T.unsafe(nil)); end
end

class XPath::Literal
  # @return [Literal] a new instance of Literal
  def initialize(value); end

  # Returns the value of attribute value.
  def value; end
end

class XPath::Renderer
  # @return [Renderer] a new instance of Renderer
  def initialize(type); end

  def anywhere(element_names); end
  def attribute(current, name); end
  def axis(current, name, element_names); end
  def binary_operator(name, left, right); end
  def child(current, element_names); end
  def convert_argument(argument); end
  def css(current, selector); end
  def descendant(current, element_names); end
  def function(name, *arguments); end
  def is(one, two); end
  def join(*expressions); end
  def literal(node); end
  def render(node); end
  def string_literal(string); end
  def text(current); end
  def this_node; end
  def union(*expressions); end
  def variable(name); end
  def where(on, condition); end

  private

  # @return [Boolean]
  def valid_xml_name?(name); end

  def with_element_conditions(expression, element_names); end

  class << self
    def render(node, type); end
  end
end

class XPath::Union
  include ::Enumerable

  # @return [Union] a new instance of Union
  def initialize(*expressions); end

  # Returns the value of attribute expressions.
  def arguments; end

  def each(&block); end
  def expression; end

  # Returns the value of attribute expressions.
  def expressions; end

  def method_missing(*args); end
  def to_s(type = T.unsafe(nil)); end
  def to_xpath(type = T.unsafe(nil)); end
end
