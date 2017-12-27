package Museum;

/**
 * Created by keke on 2017/12/18.
 * Access data from Mongodb
 */
import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "people", path = "people")
public interface PersonRepository extends MongoRepository<Person, String> {

    //自动绑定了？？！！
    List<Person> findByLastName(@Param("name") String name);

    List<Person> findByFirstName(@Param("name") String name);

    List<Person> findByAge(@Param("age") String age);

    //http://localhost:8080/people/search/findByFirstName/?name=Kurt

}
