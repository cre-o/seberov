window.percentageIntegerCalc = (integer, percentage) ->
  # @TODO validate
  Math.round(integer * (percentage/100))
