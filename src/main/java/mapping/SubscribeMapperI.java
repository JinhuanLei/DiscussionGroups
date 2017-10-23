package mapping;

import domain.subscribe;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;

public interface SubscribeMapperI {
    @Insert("insert into subscribe(subscribeid,username,discussion)values(#{subscribeid},#{username}, #{discussion})")
    public int add(subscribe sub);



    @Delete("delete from subscribe where username=#{username}")
    public int deleteById(String username);

}
