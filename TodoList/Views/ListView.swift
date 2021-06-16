//
//  ListView.swift
//  TodoList
//
//  Created by ابرار on 05/11/1442 AH.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List{
            
            ForEach(listViewModel.items){ item in
                ListRowView(item: item)
                    .onTapGesture {
                    withAnimation(.linear) {
                        listViewModel.updateItem(item: item)
                    }
                }
                
                
            }.onDelete(perform:
                        listViewModel.deletItem)
            .onMove(perform:listViewModel.moveItem)
                
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(),trailing: NavigationLink("Add", destination: AddView()))
    }
   
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ListView()
        }.environmentObject(ListViewModel())
    }
}


