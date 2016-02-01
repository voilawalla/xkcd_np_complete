	#handles high-level precision plus norms (defaults to USD)
	module Currency
	   #this allows RSpec to use these methods on Currency itself
	   module_function

	    #strips dollar signs, decimal points and trailing spaces from prices entered via CSV file	   
	    def currency_to_i(currency)
	      currency.gsub(/[^\d]/, '').to_i
	    end

	    #reverses process
	    def integer_to_currency(integer)
	      '$%.2f' % (integer * 0.01)
	    end
	end
