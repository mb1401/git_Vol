package vol.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vol.model.Vol;

public interface VolDao extends JpaRepository<Vol, Long> {
	@Query("select v from Vol v join fetch v.depart d join fetch v.arrivee a")
	List<Vol> findAllWithVol();
}
