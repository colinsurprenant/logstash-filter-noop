require 'spec_helper'
require "logstash/filters/noop"

describe LogStash::Filters::Noop do
  describe "simple event" do
    let(:config) do <<-CONFIG
      filter {
        noop {
          add_field => ["[foo]", "bar"]
        }
      }
    CONFIG
    end

    sample("message" => "hello world") do
      expect(subject).to include("message")
      expect(subject['message']).to eq("hello world")
      expect(subject['foo']).to eq("bar")
    end
  end
end
