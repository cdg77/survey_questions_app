require('spec_helper')

describe(Question) do
  describe('#survey') do
    it('returns which survey the question belongs to') do
      test_survey = Survey.create({:name => "favorites"})
      test_question = Question.create({:description => "what is your favorite food?", :survey_id => test_survey.id})
      expect(test_question.survey).to(eq(test_survey))
    end
  end
end
