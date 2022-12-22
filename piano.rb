notes = [
  'A',
  'A#/Bb',
  'B',
  'C',
  'C#/Db',
  'D',
  'D#/Eb',
  'E',
  'F',
  'F#/Gb',
  'G',
  'G#/Ab'
]

degrees = (1..7)
major_scale = [2, 2, 1, 2, 2, 2, 1]
minor_scale = [2, 2, 1, 2, 2, 2, 1]

intervals = {
  unison: 0,
  minor_second: 1,
  major_second: 2,
  minor_third: 3,
  major_third: 4,
  perfect_fourth: 5,
  diminished_fifth: 6,
  perfect_fifth: 7,
  minor_sixth: 8,
  major_sixth: 9,
  minor_seventh: 10,
  major_seventh: 11,
  perfect_octave: 12
}

major_chord = [:major_third, :perfect_fifth]
minor_chord = [:minor_third, :perfect_fifth]
inversions = {
  root: 1,
  third: 3,
  fifth: 5
}

common_chord_progressions = [
  [1, 5, 6, 4],
  [1, 4, 5],
  [2, 5, 1],
  [1, 4, 1, 5, 4, 1],
  [1, 6, 4, 5],
  [1, 5, 6, 3, 4, 1, 4, 5],
  [7, 4, 5, 3, 6, 2, 5, 1],
  [7, 1, 4, 7, 3, 6, 4, 5, 1],
  [7, 1, 4, 7, 3, 6, 2, 5, 1],
  [6, 4, 1, 5]
]

hands = [:left, :right, :together]
movement = [:up, :down, :both, :reversed]

pp "Key: #{notes.sample}"
pp "Movement: #{movement.sample.to_s}"
pp "Hands: #{hands.sample.to_s}"
pp "Starting note: #{degrees.to_a.sample}"
progression = common_chord_progressions.sample.map do |c|
  inversion = inversions.values.sample
  if inversion == 1 then c else "#{c}/#{inversion}" end
end
pp "Chord Progression: #{progression.join(', ')}"
