class Alouette
  # Store et parts of the lyrics as a constant
  ET_PARTS = [
    "la tête",
    "le bec",
    "les yeux",
    "le cou",
    "les ailes",
    "les pattes",
    "la queue",
    "le dos"
  ]

  # Generate all Et <part>! lines for a given verse.
  def self.lines_for_verse verse_num
    verse_lines = Array.new
    (verse_num + 1).times do |index|
      verse_lines.unshift("Et #{ ET_PARTS[index] }!")
    end
    return verse_lines
  end

  # Build the requested verse
  def self.verse verse_num
    et_part = Alouette.lines_for_verse(verse_num)
    et_lines = ""

    (verse_num + 1).times do |index|
      if index == verse_num
        et_lines += "#{ et_part[index] }\n#{ et_part[index] }"
      else
        et_lines += "#{ et_part[index] }\n#{ et_part[index] }\n"
      end
    end
    verse = "Je te plumerai #{ ET_PARTS[verse_num] }.\nJe te plumerai #{ ET_PARTS[verse_num] }.\n#{ et_lines }\nAlouette!\nAlouette!\nA-a-a-ah"
    return verse
  end

  # Builds entire song as a string
  def self.sing
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    all_lines = ""

    # New lines added after easv verse and refrain
    (ET_PARTS.length).times do |index|
      all_lines += "#{refrain}\n\n"
      all_lines += "#{Alouette.verse(index)}\n\n"
    end

    # Ends with refrain
    all_lines += refrain
    return all_lines
  end
end
