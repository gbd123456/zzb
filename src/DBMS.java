import com.alibaba.druid.pool.DruidDataSourceFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.io.IOException;
import java.util.List;
import java.util.Properties;

public class DBMS {
    private static JdbcTemplate template;

    static {
        try {
            Properties config = new Properties();
            config.load(DBMS.class.getResourceAsStream("jdbcconfig.properties"));
            Class.forName(config.getProperty("driver"));
            DataSource dataSource = DruidDataSourceFactory.createDataSource(config);
            template = new JdbcTemplate(dataSource);


        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static <T> List<T> query(String sql, RowMapper<T> rowMapper) throws DataAccessException {
        return template.query(sql, rowMapper);
    }

    public static <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... args) throws DataAccessException {
        return template.query(sql, rowMapper, args);
    }

    public static <T> T queryForObject(String sql, RowMapper<T> rowMapper) throws DataAccessException {
        List<T> query = DBMS.query(sql, rowMapper);
        if (query != null && query.size() > 0) {
            return query.get(0);
        }
        return null;
    }

    public static <T> T queryForObject(String sql, RowMapper<T> rowMapper, Object... args) throws DataAccessException {
        List<T> query = DBMS.query(sql, rowMapper, args);
        if (query != null && query.size() > 0) {
            return query.get(0);
        }
        return null;
    }

}
