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

        Category category = new Category()
        category.name = "AAA"
        category.urlImage = "No Image"
        category.site = site1
        category.save()

        Category category2 = new Category()
        category2.name = "BBB"
        category2.urlImage = "No Image"
        category2.site = site2
        category2.save()

        Category category3 = new Category()
        category3.name = "CCC"
        category3.urlImage = "No Image"
        category3.site = site3
        category3.save()


    }
    def destroy = {
    }
}
