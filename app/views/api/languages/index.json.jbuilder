# frozen_string_literal: true

json.data do
  json.array! @languages do |language|
    json.attributes do
      json.call(language, :id, :name, :slug, :learn_as)
    end
    json.links do
      json.self api_language_url(language)
    end
  end
end
