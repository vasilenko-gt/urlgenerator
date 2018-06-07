class Url < ApplicationRecord

  before_create :generate_short_url

  belongs_to :user

  validates :user,
            :original_url,
            presence: true,
            on: :create

  validates_format_of :original_url, with: /\A(?:(?:http|https):\/\/)?([-a-zA-Z0-9.]{2,256}\.[a-z]{2,4})\b(?:\/[-a-zA-Z0-9@,!:%_\+.~#?&\/\/=]*)?\z/

  def generate_short_url
    chars = ['0'..'9','A'..'Z','a'..'z'].map{|range| range.to_a}.flatten

    if self.desire_url.present?
      if self.new_desire?
        self.short_url = self.desire_url.downcase
      else
        self.short_url = "#{self.desire_url}#{1.times.map{chars.sample}.join}"
        self.short_url = self.short_url until Url.find_by_short_url(self.short_url).nil?
      end
    else
      self.short_url = 6.times.map{chars.sample}.join
      self.short_url = self.short_url until Url.find_by_short_url(self.short_url).nil?
    end
  end

  def find_duplicate_uniq
    Url.find_by_unique_url(self.unique_url)
  end

  def find_duplicate_short
    Url.find_by_short_url(self.short_url)
  end

  def find_duplicate_desire
    Url.find_by_desire_url(self.desire_url)
  end

  def new_url?
    find_duplicate_uniq.nil?
  end

  def new_desire?
    find_duplicate_desire.nil?
  end

  def desire
    self.desire_url.downcase
  end

  def unique
    self.original_url.strip!
    self.unique_url = self.original_url.downcase.gsub(/(https?:\/\/)|(www\.)/, "")
    self.unique_url.slice!(-1) if self.unique_url[-1] == "/"
    self.unique_url = "http://#{self.unique_url}"
  end

end