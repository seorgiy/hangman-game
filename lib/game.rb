class Game
  TOTAL_ERRORS_ALLOWED = 7

  def initialize(word)
    @letters = word.chars
    @normal_letters = normalized_letters(@letters)
    @user_guesses = []
  end

  def errors
    @user_guesses - @normal_letters
  end

  def errors_made
    errors.length
  end

  def errors_allowed
    TOTAL_ERRORS_ALLOWED - errors_made
  end

  def letters_to_guess
    @letters.map do |letter|
      letter if @user_guesses.include?(normalized_letter(letter))
    end
  end

  def lost?
    errors_allowed.zero?
  end

  def over?
    won? || lost?
  end

  def play!(letter)
    return if over? && @user_guesses.include?(normalized_letter(letter))

    @user_guesses << normalized_letter(letter)
  end

  def won?
    (@normal_letters - @user_guesses).empty?
  end

  def word
    @letters.join
  end

  def normalized_letter(letter)
    case letter
    when "Ё" then "Е"
    when "Й" then "И"
    else letter
    end
  end

  def normalized_letters(letters)
    letters.map { |l| normalized_letter(l) }
  end
end
