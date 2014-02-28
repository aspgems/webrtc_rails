class ParameterizableValidator < ActiveModel::EachValidator  
  def validate_each(object, attribute, value)  
    if URI.escape(value).parameterize.blank?
      object.errors[attribute] << (options[:message] || I18n.t('webrtc_rails.errors.parameterizable'))
    end
  end  
end  
