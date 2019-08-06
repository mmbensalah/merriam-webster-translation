require 'rails_helper'

describe MerriamWebsterService do
  it 'exists' do
    service = MerriamWebsterService.new
    expect(service).to be_a(MerriamWebsterService)
  end

  it 'retrieves data for a source word`s translation' do
    data = MerriamWebsterService.get_translation("bear")
    expect(data.count).to eq(10)
    expect(data[0][:shortdef]).to eq(["carry : llevar, portar",
                                      "dar a luz a (un niño)",
                                      "produce : dar (frutas, cosechas)"]
                                    )
  end
end
