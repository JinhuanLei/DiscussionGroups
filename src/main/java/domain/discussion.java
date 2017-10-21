package domain;

public class discussion {
    private int discussionid;
    private String discussionname;
    private String topic;
    private String date;
    private String instructor;

    public int getDiscussionid() {
        return discussionid;
    }

    public void setDiscussionid(int discussionid) {
        this.discussionid = discussionid;
    }

    public String getDiscussionname() {
        return discussionname;
    }

    public void setDiscussionname(String discussionname) {
        this.discussionname = discussionname;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }
}
