def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, languages|
    languages.each do |language, attributes|
      if new_hash[language].nil?
        new_hash[language] = {type: attributes[:type], style: [style]}
      else
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
