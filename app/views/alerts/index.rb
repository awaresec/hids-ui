module Alerts
  class Index < ::Stache::View
    def alert_details_template
      template_include_tag "alerts/alert"
    end
  end
end