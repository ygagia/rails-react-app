Hypernova.configure do |config|
  config.host = "localhost"
  config.port = "3030"
end

class HypernovaRequestMonitoring
  def prepare_request(current_request, original_request)
    # This is a good place to increment internal counters to know that a request happened
    current_request
  end

  def after_response(current_response, original_response)
    # This is a good place to increment internal counters to know that a request was successful
    current_response
  end

  def on_error(error, *args)
    # This is a good place to send SSR render errors to your error tracking system, or log it
  end
end

Hypernova.add_plugin!(HypernovaRequestMonitoring.new)