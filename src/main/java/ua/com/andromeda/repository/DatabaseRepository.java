package ua.com.andromeda.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import ua.com.andromeda.config.HibernateConfig;
import ua.com.andromeda.model.Group;
import ua.com.andromeda.model.Lesson;
import ua.com.andromeda.model.Student;
import ua.com.andromeda.model.Teacher;

import javax.persistence.Tuple;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class DatabaseRepository {
    private static DatabaseRepository instance;

    private final SessionFactory sessionFactory;

    private DatabaseRepository() {
        this.sessionFactory = HibernateConfig.getInstance().getSessionFactory();
    }

    public static DatabaseRepository getInstance() {
        if (instance == null) {
            instance = new DatabaseRepository();
        }
        return instance;
    }


    @SuppressWarnings("unchecked")
    public List<Group> getGroupsWhereNameLike(String name) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();
        List<Group> groups = session.createQuery("from Group where name like :name")
                .setParameter("name", "%" + name + "%").list();
        transaction.commit();
        return groups;
    }

    public Map<String, Integer> getStudentsCountPerGroup() {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();
        Map<String, Integer> map = session.createNativeQuery("select name, count(*) " +
                        "from students s " +
                        "join groups g on g.id = s.group_id " +
                        "group by name", Tuple.class)
                .getResultStream()
                .collect(Collectors.toMap(
                        tuple -> tuple.get("name", String.class),
                        tuple -> tuple.get("count", BigInteger.class).intValue()));
        transaction.commit();
        return map;
    }

    public Map<String, Double> getAverageMarkPerGroup() {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();
        Map<String, Double> map = session.createNativeQuery("select  g.name as group_name, avg(m.value) as average_mark " +
                        "from students_marks sm " +
                        "join students s on sm.student_id = s.id " +
                        "join marks m on sm.mark_id = m.id " +
                        "join groups g on g.id = s.group_id " +
                        "group by name", Tuple.class)
                .getResultStream()
                .collect(Collectors.toMap(
                        tuple -> tuple.get("group_name", String.class),
                        tuple -> tuple.get("average_mark", BigDecimal.class).doubleValue()));
        transaction.commit();
        return map;
    }

    @SuppressWarnings("unchecked")
    public List<Teacher> getTeachersWhereFirstNameLikeOrLastNameLike(String value) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();
        List<Teacher> teachers = session.createQuery("from Teacher where firstName = :value or lastName = :value")
                .setParameter("value", value)
                .list();
        transaction.commit();
        return teachers;

    }

    public Lesson getLessonWhereAverageMarkIsMax() {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();
        List<Lesson> lessons = session.createNativeQuery("select id, name, code, mark_id " +
                "from (" +
                "    select avg(m.value) as mark_value, l.name as name, l.id as id, l.code as code, m.id as mark_id " +
                "    from students_marks sm" +
                "    join students s on sm.student_id = s.id" +
                "    join marks m on sm.mark_id = m.id" +
                "    join groups g on g.id = s.group_id" +
                "    join lessons l on l.id = m.lesson_id" +
                "    group by l.name, l.id, l.code, m.id" +
                "    order by mark_value desc" +
                "    limit 1) as t1;\n", Lesson.class).list();
        transaction.commit();
        return lessons.get(0);
    }

    public Lesson getLessonWhereAverageMarkIsMin() {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();
        List<Lesson> lessons = session.createNativeQuery("select id, name, code, mark_id " +
                "from (" +
                "    select avg(m.value) as mark_value, l.name as name, l.id as id, l.code as code, m.id as mark_id " +
                "    from students_marks sm" +
                "    join students s on sm.student_id = s.id" +
                "    join marks m on sm.mark_id = m.id" +
                "    join groups g on g.id = s.group_id" +
                "    join lessons l on l.id = m.lesson_id" +
                "    group by l.name, l.id, l.code, m.id" +
                "    order by mark_value" +
                "    limit 1) as t1", Lesson.class).list();
        transaction.commit();
        return lessons.get(0);
    }

    @SuppressWarnings("unchecked")
    public List<Student> getStudentsWhereAverageMarkIsMoreThan(double value) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();
        List<Student> students = session.createNativeQuery("select id, admission_date, age, first_name, last_name, group_id from" +
                        "    (select s.id, admission_date, age, first_name, last_name, group_id, avg(m.value) as average_mark from students s" +
                        "    join students_marks sm on s.id = sm.student_id" +
                        "    join marks m on sm.mark_id = m.id" +
                        "    group by s.id, admission_date, age, first_name, last_name, group_id) t1" +
                        "    where average_mark > :value")
                .setParameter("value", value)
                .addEntity(Student.class)
                .list();
        transaction.commit();
        return students;
    }

}
