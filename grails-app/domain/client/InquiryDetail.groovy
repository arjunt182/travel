package client

class InquiryDetail {
    String clientName
    String address
    String email
    String phone
    String mobile
    int peopleNumber
    int days
    String destination

    static constraints = {
        phone nullable: true
    }
}
