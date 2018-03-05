package gitdia1

class Site {
    long id
    String name
    boolean active
    static hasMany = [categories:Category]
    static constraints = {
    }
}
