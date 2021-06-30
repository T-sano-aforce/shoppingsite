package jp.co.aforce.beans;

public class ItemBean {
	private String id;//商品id(primary key)
	private String img;//商品画像
	private String itemName;//商品名
	private String price;//価格
	private String emsg; // エラーメッセージ
	private String commsg;//完了メッセージ

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getEmsg() {
		return emsg;
	}
	public void setEmsg(String emsg) {
		this.emsg = emsg;
	}
	public String getCommsg() {
		return commsg;
	}
	public void setCommsg(String commsg) {
		this.commsg = commsg;
	}

}