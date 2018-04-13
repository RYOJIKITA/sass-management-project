class Arifact < ApplicationRecord
	attr_accessor :upload
  belongs_to :project

  MAX_FILE_SIZE 10.megabytes
  validates_presence_of :name, :upload
  validates_uniqueness_of :name
  validate :uploaded_file_size

  private

  	def upload_to_s3
  		
  	end

  	def uploaded_file_size
  		if upload
  			errors.add(:upload, "File size must be less than #{self.class::MAX_FILE_SIZE}") unless upload.size <= self.class::MAX_FILE_SIZE
  		end
  	end
end
