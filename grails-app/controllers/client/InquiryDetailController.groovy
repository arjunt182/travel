package client

class InquiryDetailController {

    def index() { }

    def registerInquiry(){

    }

    def saveInquiry(){
        println "++++++++++" + params

        def inquiryDetail= new InquiryDetail(params);
        inquiryDetail.save()
    }



}
