package domain;

public class entry {
    private int entryid;
    private String username;
    private String entryname;
    private String discussion;
    private String date;
    private String entryinfer;
private String imagepath;

    public String getImagepath() {
        return imagepath;
    }

    public void setImagepath(String imagepath) {
        this.imagepath = imagepath;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getEntryinfer() {
        return entryinfer;
    }

    public void setEntryinfer(String entryinfer) {
        this.entryinfer = entryinfer;
    }

    public int getEntryid() {
        return entryid;
    }

    public void setEntryid(int entryid) {
        this.entryid = entryid;
    }

    public String getEntryname() {
        return entryname;
    }

    public void setEntryname(String entryname) {
        this.entryname = entryname;
    }

    public String getDiscussion() {
        return discussion;
    }

    public void setDiscussion(String discussion) {
        this.discussion = discussion;
    }
}
