module Draper
  module SimpleFormBuilderExtension
    extend ActiveSupport::Concern

    included do
      alias_method_chain :association, :decoration
    end

    def association_with_decoration(association, options = {}, &block)
      reflection = find_association_reflection(association)
      raise "Association #{association.inspect} not found" unless reflection

      options[:collection] ||= options.fetch(:collection) {
        conditions = reflection.options[:conditions]
        conditions = conditions.call if conditions.respond_to?(:call)
        relation = reflection.klass.where(conditions).order(reflection.options[:order])
        if relation.respond_to?(:decorate) && relation.decorator_class?
          relation = relation.decorate
        end
      }
      association_without_decoration association, options, &block
    end
  end
end
