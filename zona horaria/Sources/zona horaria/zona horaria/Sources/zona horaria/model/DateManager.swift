import Foundation

class DateManager{

    static let dateManager:DateManager=DateManager()
    let currentDate=Date()


    func getTimeZone( )-> Int {

      print("Ingrese el tiempo en milisegundos")

      guard let miliSecondsInput = readLine(), let miliSeconds = Int(miliSecondsInput) else { return -1 } 

      let timeZoneString = DateFormatters.dateFormatterTimeZone.string(from: currentDate)

      guard var timeZone = Int(timeZoneString) else { return -1 }
      
      let hours=TimeConverter.fromMilisecondsToHours( miliSeconds: miliSeconds )
      timeZone = timeZone + TimeConverter.fromHoursToTimeZone(hours: hours)

      return timeZone 
      
    }

    func getDateIncresedInSeconds( seconds : Double )-> String{

      let dateIncresed = currentDate.addingTimeInterval( seconds )
      
      return DateFormatters.dateFormatterDateAndHour.string(from: dateIncresed)
  }

}

