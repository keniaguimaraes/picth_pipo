def validates_with(*args, &block)
    options = args.extract_options!
    options[:class] = self

    args.each do |klass|
      validator = klass.new(options, &block)

      if validator.respond_to?(:attributes) && !validator.attributes.empty?
        validator.attributes.each do |attribute|
          _validators[attribute.to_sym] << validator
        end
      else
        _validators[nil] << validator
      end

      validate(validator, options)
    end
  end