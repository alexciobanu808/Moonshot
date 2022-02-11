//
//  ListLayoutView.swift
//  Moonshot
//
//  Created by Alex Ciobanu on 2/11/22.
//

import SwiftUI

struct ListLayoutView: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        ScrollView {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                    HStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding()
                        
                        VStack {
                            Spacer()
                            
                            Text(mission.displayName)
                                .font(.title2)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Text(mission.formattedLaunchDate)
                                .font(.headline)
                                .foregroundColor(.white.opacity(0.5))
                            
                            Spacer()
                        }
                        .padding(.vertical)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(.lightBackground)
                        
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.lightBackground)
                    )
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}

struct ListLayoutView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        GridLayoutView(astronauts: astronauts, missions: missions)
    }
}
