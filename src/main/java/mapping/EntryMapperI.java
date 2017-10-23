package mapping;

import domain.entry;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface EntryMapperI {
    @Select("select * from entry where discussion=#{discussion}")
    public List<entry> getByDiscussion(String discussion);

    @Select("select * from entry")
    public List<entry> getAllEntry();

    @Delete("delete from entry where entryid=#{entry}")
    public int deleteById(int entry);


    @Insert("insert into entry(entryid,username,entryname,discussion,date,entryinfer,imagepath) values(#{entryid},#{username}, #{entryname},#{discussion},#{date},#{entryinfer},#{imagepath})")
    public int add(entry act);



}
