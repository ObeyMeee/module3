package ua.com.andromeda.model;

import lombok.Getter;
import lombok.NonNull;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "groups")
@Getter
@Setter
@ToString
public class Group implements Persistable {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;
    private String name;
    @OneToMany(mappedBy = "group", cascade = CascadeType.ALL)
    @ToString.Exclude
    private Set<Student> students;

    public void add(@NonNull Student student) {
        if (students == null) {
            students = new HashSet<>();
        }
        students.add(student);
    }
}
