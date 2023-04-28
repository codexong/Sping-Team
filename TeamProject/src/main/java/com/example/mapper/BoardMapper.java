package com.example.mapper;

import java.util.List;

import com.example.domain.BoardVO;


public interface BoardMapper
{
	/* @Select("select * from tbl_board where bno > 0") */

	public List<BoardVO> getList();

	public void insert(BoardVO board);
	public BoardVO read(Long id);
	public int delete(Long id);
	public int update(BoardVO board);
 }
