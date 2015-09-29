class GenerateQuotesJob < ActiveJob::Base
  queue_as :default

  # Removed arguments from perform method
  def perform
    Quote.generate
  end
end
