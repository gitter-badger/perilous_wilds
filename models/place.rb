require 'models/random_element'
# require 'models/place/adjective'
# require 'models/place/noun'
# require 'models/place/feature'
require 'tilt/erb'

class Place < RandomElement
  OPTIONS = [
    'The <%= feature %>',
    'The <%= adjective %> <%= feature %>',
    'The <%= feature %> of (the) <%= noun %>',
    'The <%= noun %>\'s <%= feature %>',
    '<%= feature %> of the <%= adjective %> <%= noun %>',
    'The <%= adjective %> <%= noun %>'
  ].freeze

  private

  def noun
    @noun ||= Place::Noun.new
  end

  def feature
    @feature ||= Place::Feature.new
  end

  def adjective
    @adjective ||= Place::Adjective.new
  end
end