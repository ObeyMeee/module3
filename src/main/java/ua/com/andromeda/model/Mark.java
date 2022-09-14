package ua.com.andromeda.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "marks")
@Getter
@Setter
@ToString
public class Mark implements Persistable {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;
    private int value;
    @ManyToMany(mappedBy = "marks")
    @ToString.Exclude
    private Set<Student> students;
    @OneToOne
    @JoinColumn(name = "lesson_id")
    private Lesson lesson;
}
