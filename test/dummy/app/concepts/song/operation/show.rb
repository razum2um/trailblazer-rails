# frozen_string_literal: true

class Song::Show < Trailblazer::Operation
  step Model(Song, :new)
end
