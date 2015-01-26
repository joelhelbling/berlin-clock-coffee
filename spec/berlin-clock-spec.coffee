window.BerlinClock =
  display: (time) ->
    seconds = if time.getSeconds() % 2 == 0 then 'Y' else 'O'
    [seconds]

describe 'Berlin Clock', ->
  When -> @time = new Date("2015-01-26T00:00:#{@seconds}.000Z")
  When -> @result = BerlinClock.display @time

  describe 'seconds', ->
    describe 'even seconds', ->
      Given -> @seconds = '02'
      Then -> @result[0] == 'Y'
    describe 'odd seconds', ->
      Given -> @seconds = '01'
      Then -> @result[0] == 'O'
