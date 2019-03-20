module Kamiflex
  module BasicElements
    def text(message, **params)
      @flex_contents << {
        "type": "text",
        "text": message
      }.merge(params)
    end

    def image(url, **params)
      @flex_contents << {
        "type": "image",
        "url": url
      }.merge(params)
    end

    def icon(url, **params)
      @flex_contents << {
        "type": "image",
        "url": url
      }.merge(params)
    end

    def separator(**params)
      @flex_contents << {
        "type": "separator",
        "margin": "md",
        "color": "#000000",
      }.merge(params)
    end

    def spacer(**params)
      @flex_contents << {
        "type": "spacer",
        "size": "md",
      }.merge(params)
    end

    def url_button(label, url, **params)
      @flex_contents << {
        "type": "button",
        "action": {
          "type": "uri",
          "label": label,
          "uri": url
        }
      }.merge(params)
    end

    def message_button(label, message, **params)
      @flex_contents << {
        "type": "button",
        "action": {
          "type": "message",
          "label": label,
          "text": message
        }
      }.merge(params)
    end
  end
end