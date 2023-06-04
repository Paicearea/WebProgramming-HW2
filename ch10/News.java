package ch10;

public class News {
   private int aid;
   private String author;
   private String email;
   private String title;
   private String img;
   private String date;
   private String content;
   
   public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
   public int getAid() {
      return aid;
   }
   public void setAid(int aid) {
      this.aid = aid;
   }
   public String getTitle() {
      return title;
   }
   public void setTitle(String title) {
      this.title = title;
   }
   public String getImg() {
	      return img;
   }
   public void setImg(String img) {
	  this.img = img;
   }
   public String getDate() {
      return date;
   }
   public void setDate(String date) {
      this.date = date;
   }
   public String getContent() {
      return content;
   }
   public void setContent(String content) {
      this.content = content;
   }
}