package mapping;

import domain.subscribe;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface SubscribeMapperI {
    @Insert("insert into subscribe(subscribeid,username,discussion)values(#{subscribeid},#{username}, #{discussion})")
    public int add(subscribe sub);

    @Select("select * from subscribe where username=#{username}")
    public subscribe getByUsername(String username);


    @Delete("delete from subscribe where username=#{username}")
    public int deleteByName(String username);

}
