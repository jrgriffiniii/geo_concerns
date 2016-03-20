FactoryGirl.define do
  factory :external_metadata_file, class: FileSet do
    initialize_with { new({ conforms_to: 'ISO19139' }) }
    transient do
      user { FactoryGirl.create(:user) }
      content nil
    end

    after(:build) do |file, evaluator|
      file.title = ['A metadata file']
      file.apply_depositor_metadata(evaluator.user.user_key)
    end

    after(:create) do |file, evaluator|
      if evaluator.content
        Hydra::Works::UploadFileToGenericFile.call(file, evaluator.content)
      end
    end
  end
end
