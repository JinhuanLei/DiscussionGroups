package mapping;

import domain.discussion;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DiscussionMapperI {
    @Insert("insert into discussion(discussionid,discussionname,topic,instructor,date) values(#{discussionid},#{discussionname}, #{topic},#{instructor},#{date})")
    public int add(discussion act);

    @Select("select * from discussion")
    public List<discussion> getAllDiscussions();

    @Select("select * from discussion where instructor=#{instructor}")
    public List<discussion> getDiscussionsByInstructor(String instructor);

    @Select("select * from discussion where discussionname=#{discussionname}")
    public discussion getDiscussionsByDiscussionname(String discussionname);

    @Delete("delete from discussion where discussionname=#{discussionname}")
    public int deleteByName(String discussionname);

@Select("select count(*) from discussion")
    public int getAcountFromDiscussion();



}
