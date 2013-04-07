require 'spec_helper'

describe CopyrightPresenter::Helpers do

  class SomeHelper
    include CopyrightPresenter::Helpers
  end

  subject { SomeHelper.new }

  let :company_name do
    'Some Company'
  end

  let :current_year do
    Time.now.strftime( '%Y' )
  end

  context 'when no #start_year is provided' do

    it "should return the correct value for #copyright_long" do
      subject.copyright_long( company_name ).should == "Copyright © #{current_year} #{company_name}. All Rights Reserved."
    end

    it "should return the correct value for #copyright_short" do
      subject.copyright_short( company_name ).should == "Copyright © #{current_year} #{company_name}."
    end

  end

  context 'when a #start_year is provided' do

    let :start_year do
      2008
    end

    it "should return the correct value for #copyright_long" do
      subject.copyright_long( company_name, start_year ).should == "Copyright © #{start_year} - #{current_year} #{company_name}. All Rights Reserved."
    end

    it "should return the correct value for #copyright_short" do
      subject.copyright_short( company_name, start_year ).should == "Copyright © #{start_year} - #{current_year} #{company_name}."
    end

  end

end
