require 'forwardable'

class MyArray

	# extend SingleForwardable

	def initialize(values)
		@values = values
	end

	# def_delegator :@values, :each, :each

	def each(&block)
		@values.each do |value|
			block.call(value)
		end
	end


	def map(&block)
		results = []
		@values.each do |value|
			results << block.call(value)
		end
		return results

	end

	def map2(&block)
		results = []
		for value in @values
			results.push( yield(value) )
		end

		return results

	end

	def mapLambda(code)
		results = []
		for value in @values
			results.push( code.call(value) )
		end

		return results

	end

	def groupHello(*args)
		for name in args
			puts("Hello #{name}")
		end
	end

	def hello(name="Unknown")
		puts("Hello #{name}")
	end

	def eachGreet(*names, &block)
		for name in names
			block.call( "Hello #{name}" )
		end
	end

end