class Url < ApplicationRecord

  before_create :generate_short_url

  belongs_to :user

  validates :original_url, presence: true, on: :create

  validates_format_of :original_url, with: /\A(?:(?:http|https):\/\/)?([-a-zA-Z0-9.]{2,256}\.[a-z]{2,4})\b(?:\/[-a-zA-Z0-9@,!:%_\+.~#?&\/\/=]*)?\z/

  def generate_short_url
    chars = ['0'..'9','A'..'Z','a'..'z'].map{|range| range.to_a}.flatten
    self.short_url = 6.times.map{chars.sample}.join
    self.short_url = 6.times.map{chars.sample}.join until Url.find_by_short_url(self.short_url).nil?
  end

  def find_duplicate_uniq
    Url.find_by_unique_url(self.unique_url)
  end

  def find_duplicate_short
    Url.find_by_short_url(self.short_url)
  end

  def find_duplicate_desire
    Url.find_by_desire_url(self.desire)
  end

  def new_url?
    find_duplicate_uniq.nil?
  end

  def desire
    self.desire_url
  end

  def unique
    self.original_url.strip!
    self.unique_url = self.original_url.downcase.gsub(/(https?:\/\/)|(www\.)/, "")
    self.unique_url.slice!(-1) if self.unique_url[-1] == "/"
    self.unique_url = "http://#{self.unique_url}"
  end

end