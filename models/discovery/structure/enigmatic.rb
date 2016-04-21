class Discovery < Table
  class Structure < Table
    class Enigmatic < Table
      OPTIONS = RangedHash.new(
        (1..4) => 'earthworks',
        (5..8) => 'megalith',
        (9..11) => 'statue/idol/totem',
        (12..12) => '<%= oddity %>'
      ).freeze

      private

      def add_details
        add_detail('Age', Details::Age.new(d(8, +4)))
      end

      def oddity
        self.sub_table = Details::Oddity.new
        'Oddity'
      end
    end
  end
end
