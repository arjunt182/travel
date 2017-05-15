package client

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import javafx.scene.text.FontPosture

class InquiryDetailController {
    def springSecurityService

    def index() {}

    def registerInquiry() {

    }

    def saveInquiry() {
        println "++++++++++" + params

        def inquiryDetail = new InquiryDetail(params);
        inquiryDetail.save()
        redirect(action:'listInquiry')
    }

    @Secured(['ROLE_ADMIN'])
    def listInquiry(){

        def inquiryDetail=InquiryDetail.findAllByVisibility(true)

        [inquiryDetail:inquiryDetail]

                }
    }

