package client

class InquiryDetail {
    String clientName
    String address
    String email
    String phone
    String mobile
    Date date
    int peopleNumber
    int days
    String destination
    boolean visibility=true

    static constraints = {
        phone nullable: true
    }
}
