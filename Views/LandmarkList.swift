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
        NavigationView {
            List(landmarks, id: \.id) {landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label : {
                    LandmarkRow(landmark: landmark)
                }   
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                 LandmarkList()
                     .previewDevice(PreviewDevice(rawValue: deviceName))
                     .previewDisplayName(deviceName)
        }
    }
}
