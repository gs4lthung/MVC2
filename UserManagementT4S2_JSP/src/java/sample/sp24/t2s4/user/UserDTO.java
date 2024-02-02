
package sample.sp24.t2s4.user;


public class UserDTO {
   private String userID;
   private String fullName;
   private String roleID;
   private String password;

    public UserDTO() {
        this.userID ="";
        this.fullName ="";
        this.roleID ="";
        this.password ="";
    }
   
   
   

    public UserDTO(String userID, String fullName, String roleID, String password) {
        this.userID = userID;
        this.fullName = fullName;
        this.roleID = roleID;
        this.password = password;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getRoleID() {
        return roleID;
    }

    public void setRoleID(String roleID) {
        this.roleID = roleID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
   
   
    
}
