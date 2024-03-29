package jbr.spring.boot.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Component;

@Component
public class DBHandler {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int insertOrUpdate(String sql, SqlParameterSource sqlParameterSource) {
		try {
			return new NamedParameterJdbcTemplate(this.jdbcTemplate).update(sql, sqlParameterSource);
		}
		catch(Exception ex) {
			return -999;
		}
	}
	
	public List<Map<String, Object>> select(String sql, SqlParameterSource sqlParameterSource) {
		try {
			return new NamedParameterJdbcTemplate(this.jdbcTemplate).queryForList(sql, sqlParameterSource);
		}
		catch(Exception ex) {
			return null;
		}
	}

}
