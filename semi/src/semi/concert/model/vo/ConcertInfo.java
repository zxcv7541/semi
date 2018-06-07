package semi.concert.model.vo;

public class ConcertInfo {
	private int indexNo;
	private String concertCode;
	private String concertTitle;
	private String concertSummary;
	private String concertPhoto;
	private String concertDate;
	private String concertGanre;
	private String concertAddress;
	private String concertAge;
	private int concertPrice;
	private String concertExplain;
	private String concertPhone;
	private String concertSite;
	private String concertTraffic;
	private int concertLatitude;
	private int concertLongtitude;
	
	
	public ConcertInfo() {}


	public int getIndexNo() {
		return indexNo;
	}


	public void setIndexNo(int indexNo) {
		this.indexNo = indexNo;
	}


	public String getConcertCode() {
		return concertCode;
	}


	public void setConcertCode(String concertCode) {
		this.concertCode = concertCode;
	}


	public String getConcertTitle() {
		return concertTitle;
	}


	public void setConcertTitle(String concertTitle) {
		this.concertTitle = concertTitle;
	}


	public String getConcertSummary() {
		return concertSummary;
	}


	public void setConcertSummary(String concertSummary) {
		this.concertSummary = concertSummary;
	}


	public String getConcertPhoto() {
		return concertPhoto;
	}


	public void setConcertPhoto(String concertPhoto) {
		this.concertPhoto = concertPhoto;
	}


	public String getConcertDate() {
		return concertDate;
	}


	public void setConcertDate(String concertDate) {
		this.concertDate = concertDate;
	}


	public String getConcertGanre() {
		return concertGanre;
	}


	public void setConcertGanre(String concertGanre) {
		this.concertGanre = concertGanre;
	}


	public String getConcertAddress() {
		return concertAddress;
	}


	public void setConcertAddress(String concertAddress) {
		this.concertAddress = concertAddress;
	}


	public String getConcertAge() {
		return concertAge;
	}


	public void setConcertAge(String concertAge) {
		this.concertAge = concertAge;
	}


	public int getConcertPrice() {
		return concertPrice;
	}


	public void setConcertPrice(int concertPrice) {
		this.concertPrice = concertPrice;
	}


	public String getConcertExplain() {
		return concertExplain;
	}


	public void setConcertExplain(String concertExplain) {
		this.concertExplain = concertExplain;
	}


	public String getConcertPhone() {
		return concertPhone;
	}


	public void setConcertPhone(String concertPhone) {
		this.concertPhone = concertPhone;
	}


	public String getConcertSite() {
		return concertSite;
	}


	public void setConcertSite(String concertSite) {
		this.concertSite = concertSite;
	}


	public String getConcertTraffic() {
		return concertTraffic;
	}


	public void setConcertTraffic(String concertTraffic) {
		this.concertTraffic = concertTraffic;
	}


	public int getConcertLatitude() {
		return concertLatitude;
	}


	public void setConcertLatitude(int concertLatitude) {
		this.concertLatitude = concertLatitude;
	}


	public int getConcertLongtitude() {
		return concertLongtitude;
	}


	public void setConcertLongtitude(int concertLongtitude) {
		this.concertLongtitude = concertLongtitude;
	}


	@Override
	public String toString() {
		return "indexNo=" + indexNo + ", concertCode=" + concertCode + ", concertTitle=" + concertTitle
				+ ", concertSummary=" + concertSummary + ", concertPhoto=" + concertPhoto + ", concertDate="
				+ concertDate + ", concertGanre=" + concertGanre + ", concertAddress=" + concertAddress
				+ ", concertAge=" + concertAge + ", concertPrice=" + concertPrice + ", concertExplain=" + concertExplain
				+ ", concertPhone=" + concertPhone + ", concertSite=" + concertSite + ", concertTraffic="
				+ concertTraffic + ", concertLatitude=" + concertLatitude + ", concertLongtitude=" + concertLongtitude;
	}
	
	
		
}
