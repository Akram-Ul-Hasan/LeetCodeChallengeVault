
import Foundation

class Time_Needed_to_Buy_Tickets{
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        var time = 0
        var kthTicket = tickets[k]

        for (index, ticket) in tickets.enumerated() {
            if index > k {
                time += min(ticket, kthTicket-1)
            } else {
                time += min(ticket, kthTicket)
            }
        }
        return time
    }
}
