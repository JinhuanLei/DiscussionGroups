package mapping;

import domain.discussion;
import domain.entry;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface EntryMapperI {
    @Select("select * from entry where discussion=#{discussion}")
    public discussion getByDiscussion(String discussion);

    @Insert("insert into entry(entryid,instructor,entryname,discussion,date) values(#{entryid},#{instructor}, #{entryname},#{discussion},#{date})")
    public int add(entry act);
}
