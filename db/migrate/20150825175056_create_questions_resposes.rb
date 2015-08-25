class CreateQuestionsResposes < ActiveRecord::Migration
  def change
    create_table(:questions_responses) do |t|
      t.column(:question_id, :int)
      t.column(:response_id, :int)

      t.timestamps()
    end
  end
end
