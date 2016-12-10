package com.hebada.repository;
import java.util.List;
/**
 * 分页返回对象
 * @author Administrator
 *
 * @param <T>
 */
public class PageResults<T> {
    // 当前页
    private int page;
 
    // 总页数
    private int total;
 
    // 记录
    private List<T> rows;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}
 
    
 
}
