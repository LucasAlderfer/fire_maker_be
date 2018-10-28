require 'rails_helper'

describe FireMaker do
  it 'can create new fires from the FIRMS site' do
    expect(Fire.all.count).to eq(0)
    FireMaker.make_fires
    expect(Fire.all.count).to_not eq(0)
  end
end
