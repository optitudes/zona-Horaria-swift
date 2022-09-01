import Foundation 
class DateFormatters {

    static var dateFormatterTimeZone : DateFormatter = {
        let  dateFormatter=DateFormatter()

        dateFormatter.dateFormat="Z"

        return dateFormatter
    }()

    static var dateFormatterDateAndHour : DateFormatter = {
        let  dateFormatter=DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .medium
        return dateFormatter
    }()


}