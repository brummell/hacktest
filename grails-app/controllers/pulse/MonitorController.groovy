package pulse

import grails.converters.*
import org.springframework.dao.DataIntegrityViolationException

class MonitorController {

    static allowedMethods = []

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [monitorInstanceList: Monitor.list(params), monitorInstanceTotal: Monitor.count()]
    }


    def show(Long id) {
        def monitorInstance = Monitor.get(id)
        if (!monitorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'monitor.label', default: 'Monitor'), id])
            redirect(action: "list")
            return
        }

        [monitorInstance: monitorInstance]
    }
}
