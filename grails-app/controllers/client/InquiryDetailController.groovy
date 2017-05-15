package client

import grails.converters.JSON
import javafx.scene.text.FontPosture

class InquiryDetailController {

    def index() {}

    def registerInquiry() {

    }

    def saveInquiry() {
        println "++++++++++" + params

        def inquiryDetail = new InquiryDetail(params);
        inquiryDetail.save()
        redirect(action:'listInquiry')
    }

    def listInquiry(){

        def inquiryDetail=InquiryDetail.findAllByVisibility(true)

        [inquiryDetail:inquiryDetail]

                }
    }

