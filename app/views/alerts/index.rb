module Alerts
  class Index < ::Stache::View
    def alert_details_template
      template_include_tag "alerts/alert"
    end
    
    def level_text
      if context[:level] > 10
        "Critical"
      elsif context[:level] > 7
        "Major"
      elsif context[:level] > 3
        "Minor"
      else
        "Info"
      end
    end
    
    def time_text
      context[:time].to_s(:db)
    end
  end
end