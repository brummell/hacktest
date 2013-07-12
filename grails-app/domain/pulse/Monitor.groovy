package pulse

class Monitor {

    String time
    double cpuavguseperc
    double memuseperc
    double driveuseperc
    double netrxtot
    double nettxtot


    static mapping = {
    table "monitor"
    version false
    id column:"id"
    
    }
    
    static constraints = {
    }
}
