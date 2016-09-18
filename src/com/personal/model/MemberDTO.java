package com.personal.model;

public class MemberDTO {

	private String	member_id;
	private String	member_pw;
	private String	member_nickname;
	private String	member_name;
	private int		member_sex;
	private String	member_birthday;
	private String	member_address;
	private int		member_check_email;
	private int		member_check_sms;
	private int		member_check_phone;
	private String	member_email;
	private String	member_phone;
	private int		member_active;
	private int		member_auth;
	
	public MemberDTO() {}

	public MemberDTO(String member_id, String member_pw, String member_nickname, String member_name, int member_sex,
			String member_birthday, String member_address, int member_check_email, int member_check_sms,
			int member_check_phone, String member_email, String member_phone, int member_active, int member_auth) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_nickname = member_nickname;
		this.member_name = member_name;
		this.member_sex = member_sex;
		this.member_birthday = member_birthday;
		this.member_address = member_address;
		this.member_check_email = member_check_email;
		this.member_check_sms = member_check_sms;
		this.member_check_phone = member_check_phone;
		this.member_email = member_email;
		this.member_phone = member_phone;
		this.member_active = member_active;
		this.member_auth = member_auth;
	}

	@Override
	public String toString() {
		return "MemberDTO [member_id=" + member_id + ", member_pw=" + member_pw + ", member_nickname=" + member_nickname
				+ ", member_name=" + member_name + ", member_sex=" + member_sex + ", member_birthday=" + member_birthday
				+ ", member_address=" + member_address + ", member_check_email=" + member_check_email
				+ ", member_check_sms=" + member_check_sms + ", member_check_phone=" + member_check_phone
				+ ", member_email=" + member_email + ", member_phone=" + member_phone + ", member_active="
				+ member_active + ", member_auth=" + member_auth + "]";
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_nickname() {
		return member_nickname;
	}

	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public int getMember_sex() {
		return member_sex;
	}

	public void setMember_sex(int member_sex) {
		this.member_sex = member_sex;
	}

	public String getMember_birthday() {
		return member_birthday;
	}

	public void setMember_birthday(String member_birthday) {
		this.member_birthday = member_birthday;
	}

	public String getMember_address() {
		return member_address;
	}

	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}

	public int getMember_check_email() {
		return member_check_email;
	}

	public void setMember_check_email(int member_check_email) {
		this.member_check_email = member_check_email;
	}

	public int getMember_check_sms() {
		return member_check_sms;
	}

	public void setMember_check_sms(int member_check_sms) {
		this.member_check_sms = member_check_sms;
	}

	public int getMember_check_phone() {
		return member_check_phone;
	}

	public void setMember_check_phone(int member_check_phone) {
		this.member_check_phone = member_check_phone;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public int getMember_active() {
		return member_active;
	}

	public void setMember_active(int member_active) {
		this.member_active = member_active;
	}

	public int getMember_auth() {
		return member_auth;
	}

	public void setMember_auth(int member_auth) {
		this.member_auth = member_auth;
	}
}