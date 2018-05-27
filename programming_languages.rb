
def languages
  languages = {
    :oo => {
      :ruby => {
        :type => "interpreted"
      },
      :javascript => {
        :type => "interpreted"
      },
      :python => {
        :type => "interpreted"
      },
      :java => {
        :type => "compiled"
      }
    },
    :functional => {
      :clojure => {
        :type => "compiled"
      },
      :erlang => {
        :type => "compiled"
      },
      :scala => {
        :type => "compiled"
      },
      :javascript => {
        :type => "interpreted"
      }

    }
  }
end
def reformat_languages(languages)
  new_hash = {}

  languages.each do |cat, language|
    language.each do |language, types|
      types.each do |type, value|
        if new_hash[language].nil?
          new_hash[language]={}
        end
        if new_hash[language][:style].nil?
          new_hash[language][:style] = []
        end
        new_hash[language][:style] << cat

        if new_hash[language][type].nil?
          new_hash[language][type] = value
        end
      end
    end
  end
  new_hash
end
 # reformat_languages(languages)
