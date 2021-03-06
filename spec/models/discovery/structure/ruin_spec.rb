require 'roda_helper'

RSpec.describe Discovery::Structure::Ruin do
  it_behaves_like 'a random table'

  subject { described_class.new.roll }

  it 'has Creature responsible detail' do
    expect(subject.details).to include('Creature responsible')
    expect(subject.details['Creature responsible']).to_not be_nil
  end

  it 'has Age detail' do
    expect(subject.details).to include('Age')
    expect(subject.details['Age']).to be_a(Details::Age)
  end

  it 'has Ruination detail' do
    expect(subject.details).to include('Ruination')
    expect(subject.details['Ruination']).to be_a(Details::Ruination)
  end

  it 'has Visibility detail' do
    expect(subject.details).to include('Visibility')
    expect(subject.details['Visibility']).to be_a(Details::Visibility)
  end
end
