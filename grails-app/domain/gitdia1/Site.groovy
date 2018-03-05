package gitdia1

class Site {
    String name
    static hasMany = [categories:Category]
    static constraints = {
    }
}
