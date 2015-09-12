require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Difficulty do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ difficulty }).should.be.instance_of Command::Difficulty
      end
    end
  end
end

