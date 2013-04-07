require 'spec_helper'

describe CopyrightPresenter::Copyright do

  let :company_name do
    'Some Company'
  end

  let :current_year do
    Time.now.strftime '%Y'
  end

  context 'when no #start_year is provided' do

    subject do
      described_class.new company_name
    end

    its( :short ) { should == "Copyright © 2013 #{company_name}." }

    its( :long ) { should == "Copyright © 2013 #{company_name}. All Rights Reserved." }

  end

  context 'when a #start_year is provided' do

    subject do
      described_class.new company_name, start_year
    end

    let :start_year do
      2008
    end

    its( :short ) { should == "Copyright © #{start_year} - #{current_year} #{company_name}." }

    its( :long ) { should == "Copyright © #{start_year} - #{current_year} #{company_name}. All Rights Reserved." }

    context 'when the :single_year options is provided as true' do

      let :options do
        { :single_year => true }
      end

      it "should return the correct value for #short" do
        subject.short( options ).should == "Copyright © #{current_year} #{company_name}."
      end

      it "should return the correct value for #long" do
        subject.long( options ).should == "Copyright © #{current_year} #{company_name}. All Rights Reserved."
      end

    end

  end

end
