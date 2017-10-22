package mapping;

import domain.discussion;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DiscussionMapperI {
    @Insert("insert into discussion(discussionid,discussionname,topic,instructor,date) values(#{discussionid},#{discussionname}, #{topic},#{instructor},#{date})")
    public int add(discussion act);

    @Select("select * from discussion")
    public List<discussion> getAllDiscussions();

@Select("select count(*) from discussion")
    public int getAcountFromDiscussion();



}
