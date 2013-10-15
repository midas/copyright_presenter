# encoding: utf-8

module CopyrightPresenter

  class Copyright

    attr_reader :company, :start_year

    def initialize( company, start_year=Time.now.strftime( '%Y' ) )
      @company    = company
      @start_year = start_year
    end

    def long( options={:single_year => false} )
      "#{short( options )} All Rights Reserved."
    end

    def short( options={:single_year => false} )
      "Copyright #{symbol} #{years( options )} #{company}."
    end

    def symbol
      "©"
    end

  protected

    def current_year
      Time.now.strftime( '%Y' )
    end

    def years( options )
      if options[:single_year] || start_year == current_year
        return current_year
      end

      return "#{start_year} - #{current_year}"
    end

  end

end
