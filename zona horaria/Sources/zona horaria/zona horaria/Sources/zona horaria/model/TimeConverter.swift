import Foundation

class TimeConverter{

    static let miliSecondsInSecond=100
    static let secondsInMinutes=60
    static let minutesInHour=60

    static func fromMilisecondsToHours(miliSeconds : Int )-> Int{
      return ((miliSeconds/miliSecondsInSecond)/secondsInMinutes)/minutesInHour
    }

    static func fromHoursToTimeZone(hours: Int)-> Int{
        return hours*100
    }
}