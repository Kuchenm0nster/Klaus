class Document < ActiveRecord::Base
  belongs_to :doc_type
  belongs_to :professor
  belongs_to :semester
  belongs_to :lesson

  mount_uploader :file, DocumentUploader

  validates :doc_type_id, presence: true
  validates :professor_id, presence: true
  validates :semester_id, presence: true
  validates :lesson_id, presence: true
  validates_presence_of :file
  validates_integrity_of :file
  validates_processing_of :file

  before_validation :set_position

private
  def set_position
    self.position = (Document.where(doc_type: self.doc_type, professor: self.professor, semester: self.semester, lesson: self.lesson).maximum(:position) || 0) + 1
  end
end
