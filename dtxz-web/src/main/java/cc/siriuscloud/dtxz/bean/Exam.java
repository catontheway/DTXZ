package cc.siriuscloud.dtxz.bean;

import java.util.Date;


public class Exam {
    @Override
	public String toString() {
		return "Exam [examId=" + examId + ", title=" + title + ", status=" + status + ", createtime=" + createtime
				+ ", begintime=" + begintime + ", duration=" + duration + ", clazzId=" + clazzId + ", epId=" + epId
				+ "]";
	}

	private String examId;

    private String title;

    private String status;

    private Date createtime;

    private Date begintime;

    private Integer duration;

    private String clazzId;

    private String epId;

    public String getExamId() {
        return examId;
    }

    public void setExamId(String examId) {
        this.examId = examId == null ? null : examId.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getBegintime() {
        return begintime;
    }

    public void setBegintime(Date begintime) {
        this.begintime = begintime;
    }


    public String getClazzId() {
        return clazzId;
    }

    public void setClazzId(String clazzId) {
        this.clazzId = clazzId == null ? null : clazzId.trim();
    }

    public String getEpId() {
        return epId;
    }

    public void setEpId(String epId) {
        this.epId = epId == null ? null : epId.trim();
    }

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}
}