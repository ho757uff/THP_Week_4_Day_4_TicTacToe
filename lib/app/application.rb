class Application
  def game_starts
    GameFlow.new
  end

  def perform
    game_starts
  end
end # Application class end here
