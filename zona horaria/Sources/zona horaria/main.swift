import Foundation
  
let timeZone=getTimeZone()
let USADate=getDate(seconds:3600)
print("zona horaria \(timeZone)")
print("hora en estados unidos: \(USADate)")


 func getTimeZone( )-> Int {
  let date=Date()
  let dateFormatter = DateFormatter()

  dateFormatter.dateFormat = "Z" 

  if let miliSecondsInput = readLine(), let miliSeconds = Int(miliSecondsInput) { 

    let timeZone = dateFormatter.string(from:date)
    if var timeZoneInt = Int(timeZone){
      let hours=((miliSeconds/100)/60)/60
      print("horas \(hours)")
      timeZoneInt = timeZoneInt + (hours*100)
      return timeZoneInt 
    }
  }
  return -0
 }
 func getDate( seconds : Double )->String{

  let date=Date()
  let dateFormatter=DateFormatter()
  let newDate=date.addingTimeInterval( seconds )

  dateFormatter.dateStyle = .full
  dateFormatter.timeStyle = .medium
  
  return dateFormatter.string(from: newDate) 
 }
