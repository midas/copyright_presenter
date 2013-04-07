module CopyrightPresenter
  module Helpers

    def copyright_long( name, start_year=Time.now.strftime( '%Y' ))
      copyright_long_multi_year( name, start_year )
    end

    def copyright_short( name, start_year=Time.now.strftime( '%Y' ))
      copyright_short_multi_year( name, start_year )
    end

    def copyright_long_single_year( company_name, start_year=Time.now.strftime( '%Y' ))
      CopyrightPresenter::Copyright.new( company_name, start_year ).long( :single_year => true )
    end

    def copyright_long_multi_year( company_name, start_year=Time.now.strftime( '%Y' ))
      CopyrightPresenter::Copyright.new( company_name, start_year ).long
    end

    def copyright_short_single_year( company_name, start_year=Time.now.strftime( '%Y' ))
      CopyrightPresenter::Copyright.new( company_name, start_year ).short( :single_year => true )
    end

    def copyright_short_multi_year( company_name, start_year=Time.now.strftime( '%Y' ))
      CopyrightPresenter::Copyright.new( company_name, start_year ).short
    end

  end
end
