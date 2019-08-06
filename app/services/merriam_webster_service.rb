class MerriamWebsterService

  def self.get_translation(source_word)
    to_json("/api/v3/references/spanish/json/#{source_word}?key=#{ENV["mw_key"]}")
  end

  def self.to_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("https://www.dictionaryapi.com")
  end
end
