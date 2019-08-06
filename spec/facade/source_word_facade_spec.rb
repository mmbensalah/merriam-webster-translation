require 'rails_helper'

describe SourceWordFacade do
  it 'retrieves all translations for a source word' do
    translations = SourceWordFacade.new("bear").translations
    binding.pry
  end
end
