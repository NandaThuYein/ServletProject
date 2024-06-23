package foo;

public class Employee extends Person{
private String empID;
private Person anotherPpl;
public String getEmpID() {
return empID;
}
public void setEmpID(String empID) {
this.empID = empID;
}
public Person getAnotherPpl() {
return anotherPpl;
}
public void setAnotherPpl(Person anotherPpl) {
this.anotherPpl = anotherPpl;
}
}
