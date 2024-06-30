class Best_Time_to_Buy_and_Sell_Stock_II {
    func maxProfit(_ prices: [Int]) -> Int {

        var profit = 0
        
        for i in 1..<prices.count {
            if prices[i] < prices[i - 1] {
                continue
            }
            profit += prices[i] - prices[i - 1]
        }
        
        return profit
    }
}

