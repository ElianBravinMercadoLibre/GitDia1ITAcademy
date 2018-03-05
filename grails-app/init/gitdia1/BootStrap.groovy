package gitdia1

class BootStrap {

    def init = { servletContext ->
        Site site1 = new Site()
        site1.name = "Site 1"
        site1.active = true
        site1.save()

        Site site2 = new Site()
        site2.name = "Site 2"
        site1.active = false
        site2.save()

        Site site3 = new Site()
        site3.name = "Site 3"
        site3.active = true
        site3.save()
    }
    def destroy = {
    }
}
