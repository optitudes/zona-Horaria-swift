import Foundation

let dateManager = DateManager()

let timeZone = dateManager.getTimeZone()
let USADate  = dateManager.getDateIncresedInSeconds(seconds:3600)

print("zona horaria \(timeZone)")
print("hora en estados unidos: \(USADate)")






