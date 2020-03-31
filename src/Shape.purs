module Data.Shape where

import Prelude

data Point = Point
  { x :: Number
  , y :: Number
  }

instance showPoint:: Show Point where 
  show (Point { x, y }) =
    "Point " <> show x <> " " <> show y

data Shape
  = Circle Point Number
  | Rectangle Point Number Number
  | Line Point Point
  | Text Point String

instance showShape:: Show Shape where 
  show (Circle p r) =
    "Circle " <> show p <> " Radius " <> show r
  show (Rectangle p width height) =
    "Rectangle " <> " Width " <> show width <> " Height " <> show height
  show (Line p1 p2 ) =
    "Line " <> show p1 <> " " <> show p2
  show (Text p s) =
    "Point " <> show p <> " Text " <> s