package com.project.root.mybatis.join;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.project.root.join.dto.JoinDTO;

public interface JoinMapper {

	public int joinSave(JoinDTO dto);
	
	public ArrayList<JoinDTO> myJoinView(String id);
	
	public int modify(JoinDTO dto);
	
	public int delete(int write_no);
	
	public JoinDTO myJoinViewDetail(int write_no);
	
	public List<JoinDTO> JoinAllList();
	
	public List<JoinDTO> joinAllListNum(@Param("s")int start, @Param("e") int end);

	public int selectJoinCount();

	public JoinDTO joinView(String title);

	
}
   