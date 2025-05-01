module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

secondsPerEarthYear :: Float
secondsPerEarthYear = 31557600

ageOn :: Planet -> Float -> Float
ageOn planet secs = case planet of
  Mercury -> secs / (0.2408467 * secondsPerEarthYear)
  Venus   -> secs / (0.61519726 * secondsPerEarthYear)
  Earth   -> secs / secondsPerEarthYear
  Mars    -> secs / (1.8808158* secondsPerEarthYear)
  Jupiter -> secs / (11.862615 * secondsPerEarthYear)
  Saturn  -> secs / (29.447498 * secondsPerEarthYear)
  Uranus  -> secs / (84.016846 * secondsPerEarthYear)
  Neptune -> secs / (164.79132 * secondsPerEarthYear)
