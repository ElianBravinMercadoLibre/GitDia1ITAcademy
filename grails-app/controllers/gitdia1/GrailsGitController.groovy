package gitdia1

class GrailsGitController {
    CategoryService categoryService

    SiteService siteService

    def index() {
        //Login
    }

    def siteList() {
        [siteList: siteService.list()]
    }

    def categoryList(long id){
        Site s = Site.findById(id)
        [listaCat:s.categories.sort()]
    }

    def mostarCategoria(long id){
        Category c = Category.findById(id)
        if(c == null){
            render("categoria invalida")
            return
        }else{
            c.visits = c.visits +1
            categoryService.save(c)
        }

        [categ:c]
        //redirect(uri:"/category/show/"+id.toString())
    }
}
