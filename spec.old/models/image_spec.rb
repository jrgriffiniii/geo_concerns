require 'spec_helper'

# This tests the Image model. It includes the ImageBehavior module and nothing else.
# So this test covers both the ImageBehavior module and the generated Image model
describe Image do
  let(:user) { FactoryGirl.find_or_create(:jill) }
  let(:image_file1) { ImageFile.new }
  let(:ext_metadata_file1 ) { ExternalMetadataFile.new}
  let(:ext_metadata_file2 ) { ExternalMetadataFile.new}
  let(:raster1 ) { Raster.new}
  let(:raster2 ) { Raster.new}

  it 'updates the title' do
    subject.attributes = { title: ['An image work'] }
    expect(subject.title).to eq(['An image work'])
  end

  describe 'metadata' do
    it 'has descriptive metadata' do
      expect(subject).to respond_to(:title)
    end
  end

  describe 'with acceptable inputs' do
    subject { described_class.new } 
    it 'add image,metadata,raster to file' do
      subject.members << image_file1
      subject.members << ext_metadata_file1
      subject.members << ext_metadata_file2
      subject.members << raster1
      subject.members << raster2
      expect(subject.image_files).to eq [image_file1]
      expect(subject.metadata_files).to eq [ext_metadata_file1,ext_metadata_file2]
      expect(subject.rasters).to eq [raster1,raster2]
      # expect(subject.image_file_id).to eq [image_file1.id]
      # expect(subject.metadata_files_ids).to eq [ext_metadata_file1.id,ext_metadata_file2.id]
      # expect(subject.rasters_ids).to eq [raster1.id,raster2.id]
    end
  end
end