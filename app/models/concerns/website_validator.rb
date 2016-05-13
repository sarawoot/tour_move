class WebsiteValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ URI::regexp
      record.errors[attribute] << (options[:message] || "is not an website")
    end
  end
end