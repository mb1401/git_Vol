package vol.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import vol.model.Login;

public interface LoginDao extends JpaRepository<Login, Long> {
	@Query("select l from Login l where l.login = :paramLogin")
	Login findByLogin(@Param("paramLogin")String login);

}
