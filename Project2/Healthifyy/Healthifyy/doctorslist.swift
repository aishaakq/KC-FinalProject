//
//  doctorslist.swift
//  Healthifyy
//
//  Created by Aisha AlQabandi on 13/11/2022.
//

import Foundation

struct doctor: Identifiable {
    let id = UUID()
    
    var name: String //doctor's name
    var Academicqualifications: String
    var Work: String
    var Contact: String
    var RequestAppointments: String
    
}

var HebaBenSalamah = doctor(name: "Heba Ben Salamah", Academicqualifications: "-BSc in nutrition from OSU \n-USAMSc in Clinical nutrition from OHSU, USA", Work: "Registered dietitian at Royale Hayat Hospital", Contact: "25360000", RequestAppointments: "25360000\n99369999")

var MaryamAlturki = doctor(name: "Maryam Alturki", Academicqualifications: "-BSc in clinical nutrition and food technoloy from the University of Jordan\n-MSc in diabetes care from University of Dundee", Work: "Clinical dietitian at The diet Art Clinic", Contact: "22275199", RequestAppointments: "66448965")

var GhaneemahAlfaleh = doctor(name: "Ghaneemah AlFaleh", Academicqualifications: "-BSc in Nutrition from Kuwait University \n-MSc and Ph.D. in Dietetics and Nutrition from Florida International University", Work: "Senior Clinical Dietitian at Dasman Diabetes Institute", Contact: "94991686", RequestAppointments: "94991686")

var DurraAlsumaiti = doctor(name: "Durra AlSumaiti", Academicqualifications: "-BSc in Dietetics and Clinical Nutrition Services from Penn State University\n-MSc in Nutrition Sciences from Boston University", Work: "Senior Clinical Dietitian at Dasman Diabetes Institute", Contact: "wellness_kwt@outlook.com", RequestAppointments: "Not available")

var AlghaliaAlqabandi = doctor(name: "AlGhalia AlQabandi", Academicqualifications: "-BSc in Nutritional Science from Boston University \n-MSc in Nutrition from Boston University", Work: "Senior Pediatric Dietitian at Dasman Diabetes Institute", Contact: "alghalianutrition@gmail.com", RequestAppointments: "Not available")

var FarahHachem = doctor(name: "Farah Hachem", Academicqualifications: "-BSc in Nutrition and Dietetics from the American University of Athens", Work: "Clinical Dietitian at Royale Hayat Hospital", Contact: "25360000", RequestAppointments: "25360000")

var doctorcimplete = [HebaBenSalamah, MaryamAlturki, GhaneemahAlfaleh, DurraAlsumaiti, AlghaliaAlqabandi, FarahHachem]
