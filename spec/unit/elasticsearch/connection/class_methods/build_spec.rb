require 'spec_helper'

describe Elasticsearch::Connection, '.build' do
  let(:object) { described_class }

  subject { object.build(*arguments) }

  let(:url)        { mock('URL')        }
  let(:logger)     { mock('Logger')     }
  let(:connection) { mock('Connection') }

  before do
    Faraday.should_receive(:new).with(url).and_return(connection)
  end

  context 'with one argument' do
    let(:arguments) { [url] }

    its(:raw_connection) { should be(connection)          }
    its(:logger)         { should be(NullLogger.instance) }
  end

  context 'with twi arguments' do
    let(:arguments) { [url, logger] }

    its(:raw_connection) { should be(connection) }
    its(:logger)         { should be(logger)     }
  end
end