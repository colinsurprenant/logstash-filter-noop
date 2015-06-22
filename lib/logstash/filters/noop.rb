# encoding: utf-8
require "logstash/filters/base"
require "logstash/namespace"

class LogStash::Filters::Noop < LogStash::Filters::Base

  config_name "noop"

  def register
    # nothing ro register
  end

  def filter(event)
    filter_matched(event)
  end
end
