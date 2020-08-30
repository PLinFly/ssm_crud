package pojo;

public class Student {
    private int id;
    private String name;
    private char gender;

    public Student() {
        super();
    }

    public Student(int id, String name, char gender) {
        this.id = id;
        this.name = name;
        this.gender = gender;
    }

    public void setId(int id){ this.id = id; }

    public void setName(String name){
        this.name = name;
    }

    public void setGender(char gender){
        this.gender = gender;
    }

    public int getId(){ return id; }

    public String getName(){ return name; }

    public char getGender(){ return gender; }

    @Override
    public String toString(){
        return "Student [student_id=" + id + ", student_name=" + name + ", student_gender=" + gender + "]";
    }
}
