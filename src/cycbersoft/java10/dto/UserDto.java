package cycbersoft.java10.dto;

public class UserDto {
	private int id;
	private String email;
	private String password;
	private String fullname;
	private String avatar;
	private int role_id;
	private String description;
	private static  String roleName;
	
	
	public UserDto() {
		
	}
	
	public UserDto(String email, String password, String fullname, String avatar, int role_id) {
		super();
		this.email = email;
		this.password = password;
		this.fullname = fullname;
		this.avatar = avatar;
		this.role_id = role_id;
	}
	
	public UserDto(int id, String email, String password, String fullname, String avatar, int role_id
			) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.fullname = fullname;
		this.avatar = avatar;
		this.role_id = role_id;
		
	}

	
	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getFullname() {
		return fullname;
	}


	public void setFullname(String fullname) {
		this.fullname = fullname;
	}


	public String getAvatar() {
		return avatar;
	}


	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}


	public int getRole_id() {
		return role_id;
	}


	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}

	public static  String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
}
