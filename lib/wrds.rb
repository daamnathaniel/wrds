module Wrds

  module Actions
    extend self	
    def say(wrds)
  	  puts "#{wrds}"
    end

    def ask(wrds)
  	  puts "#{wrds}"
  	  gets.strip
    end

    def show(wrds)
  	  wrds.each { |wrd| puts wrd } 
    end

    def gather(**choices)
      @chosen = ask(choices)
      case @chosen
      when 'words'
      	@api.words
      when 'suggest'
      	@api.sug
      when 'quit'
      	exit
      end

    end


  end


  module Sentences
  	extend self
    def greeting
      "Welcome to wrds. 'Find words with wrds'"
    end

    def main_options
  	  ['words - list words based on given word and constraint',
  	   'suggest - list words based on given word part',
  	   'quit - exit app'
  	   ]	
    end

    def direction
      "What would you like to do? "
    end
  end
end

require_relative '../config/environment'