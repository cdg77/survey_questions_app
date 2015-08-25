require('spec_helper')

describe(Question) do
  describe('#survey') do
    it('returns which survey the question belongs to') do
      test_survey = Survey.new({:name => "favorites"})
      test_question = Question.new({:description => "what is your favorite food?", :survey_id => test_survey.id})
    end
  end
end
