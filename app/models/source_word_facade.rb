class SourceWordFacade
  def initialize(source_word)
    @source_word = source_word
  end

  def translations
    arr = []
    service.map do |translation|
      arr << translation[:shortdef]
    end
    SourceWord.new(arr.flatten)
  end

  private

  def service
    MerriamWebsterService.get_translation(@source_word)
  end
end
