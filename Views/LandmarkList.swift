//
//  LandmarkList.swift
//  Landmarks
//
//  Created by bong on 2022/10/02.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        List(landmarks) {landmark in
//            LandmarkRow(landmark: landmark)
//        }
        
        List(landmarks, id: \.id) {landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
