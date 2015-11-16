$LOAD_PATH << File.expand_path('../../lib', File.dirname(__FILE__))

require 'rack'
require 'prometheus/client/rack/collector'
require 'prometheus/client/rack/exporter'
require 'pry'

use Prometheus::Client::Rack::Collector, persist: true
use Prometheus::Client::Rack::Exporter, persist: true
run ->(_) { [200, { 'Content-Type' => 'text/html' }, ['OK']] }
