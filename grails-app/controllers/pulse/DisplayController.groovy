package pulse

class DisplayController {

    def index() {
        def listItems = Monitor.list()
        def tvalues = []
        def cvalues = []
        def ex, why
        def graphLabels = [['number', 'time'], ['number', 'Percentage in use']] 

        listItems.each {
            tvalues.add it.time
            cvalues.add it.cpuavguseperc
            
        }
        
        //tvalues.each {
        //    render it
        //}
        [tvalues: tvalues, cvalues: cvalues]
    }
}
