//
//  BookRow.swift
//  Group6Proj
//
//  Created by Matthew Mendoza on 6/18/22.
//

import SwiftUI

struct BookRow: View {
    var book: Book
    
    var body: some View {
        HStack {
            book.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(book.name)
            Spacer()
            if book.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var books = ModelData().books
    static var previews: some View {
        BookRow(book: books[0])
    }
}
