package pulse

class GaugeController {

    def gauges() {
        def mostrecent = Monitor.last()
        def diskk
        def memm
    
        diskk = mostrecent.driveuseperc
        memm = mostrecent.memuseperc
        
        [diskk: diskk, memm: memm]
    }
}
