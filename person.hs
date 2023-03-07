data Person = Person {name :: String, age :: Int}

taro = Person {name = "Taro", age = 25}

jiro = Person "Jiro" 20

intro :: Person -> String
intro (Person {name = n}) = "My name is " ++ n ++ "."

inc :: Person -> Person
inc p = p {age = age p + 1}

main = do
  print $ name taro
  print $ age taro
  print $ intro taro
  print $ age (inc taro)
