package gitdia1

class Category {
    String name
    static belongsTo = [site:Site]
    static constraints = {
    }
}
