package jdbcUtil;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import vo.BoardVO;

// ** Board Table JPA_Test 
// => selectList, selectOne, insert, update, delete 
@Repository
public class BoardDAO {
	@PersistenceContext // EntityManager 객체 주입시 사용하는 어노테이션
	private EntityManager eManager ;
	
		
	public List<BoardVO> selectList() {
		return eManager.createQuery("from BoardVO order by root desc, step asc").getResultList();
	} // selectList
		
	public BoardVO selectOne(BoardVO vo) {
		return eManager.find(BoardVO.class, vo.getSeq()) ;
	} // selectOne
	
	/*
	 * 	Hibernate의 C, U, D 처리 메서드
	 *  => persist() 또는 saveOrUpdate(), merge(), remove()
	 *  => 반드시  트랜잭션으로  처리 되어져야  함
	 *  => entitymanager 를 사용하는 경우 version 간의 충돌로 오류발생 확률 높음

		public void bInsert(BoardVO vo) { dao.persist(vo); }
		public void bUpdate(BoardVO vo) { dao.merge(vo);   }
		public void bDelete(BoardVO vo) { dao.remove(vo);  }
	*/

} // class
