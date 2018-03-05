package gitdia1

class GrailsGitController {

    SiteService siteService

    def index() {
        //Login
    }

    def siteList() {
        [siteList: siteService.list()]
    }

}
