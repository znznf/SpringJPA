package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.BoardDAO;
import vo.BoardVO;

//** interface 자동완성 
//=> Shift + Alt + T

//** Board Table 의 CRUD Service 구현
//=> selectList, selectOne, insert, update, delete 
@Service
public class BServiceImpl implements BService {
	@Autowired
	BoardDAO dao ;
	
	
	@Override
	public List<BoardVO> selectList() {
		return dao.selectList();
	} // selectList
	
	@Override
	public BoardVO selectOne(BoardVO vo) {
		return dao.selectOne(vo);
	} // selectList
	
	
} // class
