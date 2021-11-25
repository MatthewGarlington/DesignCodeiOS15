//
//  AccountView.swift
//  DesignCodeiOS15
//
//  Created by us-guest on 11/7/21.
//

import SwiftUI

struct AccountView: View {
    @State private var isDeleted = false
    @State private var isPinned = false
    var body: some View {
        NavigationView {
            List {
                profile
                
                menu
                
                links
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
    var profile: some View {
        VStack(spacing: 8 ) {
            Image(systemName: "person.crop.circle.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .blue.opacity(0.5))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
                .background(
                    HexagonView()
                        .offset(x: -50, y: -100)
                )
                .background(
                    BlobView()
                        .offset(x: 200, y: 0)
                        .scaleEffect(0.6)
                )
            Text("Matthew Garlington")
                .font(.title.weight(.semibold))
            HStack {
                Image(systemName: "location")
                    .imageScale(.large)
                Text("United States")
                    .foregroundColor(.secondary)
            }
            
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
    var menu: some View {
        Section {
            NavigationLink { ContentView() } label: {
                Label("Settings", systemImage: "gear")
            }
            NavigationLink { ContentView() } label: {
                Label("Billing", systemImage: "creditcard")
            }
            NavigationLink { ContentView() } label: {
                Label("Help", systemImage: "questionmark")
            }
        }
        .accentColor(.primary)
        .listRowSeparator(.hidden)
    }
    var links: some View {
        Section {
            if !isDeleted {
                webSiteButton
            }
            youtubeButton
        }
        .accentColor(.primary)
    }
    var pinButton: some View {
        Button { isPinned.toggle() } label: {
            if isPinned {
                Label("Unpin", systemImage: "pin.slash")
            } else {
                Label("Pin", systemImage: "pin")
            }
        }
        .tint(isPinned ? .gray : .yellow)
    }
    var deleteButton: some View {
        Button { isDeleted = true } label: {
            Label("Delete", systemImage: "trash")
        }
        .tint(.red)
    }
    var webSiteButton: some View {
        Link(destination: URL(string: "https://apple.com")!) {
            HStack {
                Label("Website", systemImage: "house")
                Spacer()
                Image(systemName: "link")
                    .foregroundColor(.secondary)
            }
        }
        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
            pinButton
            deleteButton
        }
    }
    var youtubeButton: some View {
        Link(destination: URL(string: "https://youtube.com")!) {
            HStack {
                Label("Youtube", systemImage: "tv")
                Spacer()
                Image(systemName: "link")
                    .foregroundColor(.secondary)
            }
        }
        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
            pinButton
        }
    }
}


struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
