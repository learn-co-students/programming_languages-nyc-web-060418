def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language_hash|
    language_hash.each do |language, attributes_hash|
      attributes_hash.each do |attribute, string|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
        new_hash[language][:style] ||= []
        new_hash[language][:style] << style
        if new_hash[language][attribute].nil?
          new_hash[language][attribute] = string
        end
      end
    end
  end
          
  new_hash
end
