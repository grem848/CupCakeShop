package datasource;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

public class DataSource1
{
    private MysqlDataSource dataSource = new MysqlDataSource();
    
    public DataSource1()
    {
        dataSource.setServerName("207.154.218.76");
        dataSource.setPort(3306); // 3306
        dataSource.setDatabaseName("CupCake1");
        dataSource.setUser("andreas");
        dataSource.setPassword("1234");
    }
    
    public MysqlDataSource getDataSource()
    {
        return dataSource;
    }
}
