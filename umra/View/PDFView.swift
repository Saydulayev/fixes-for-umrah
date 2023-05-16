//
//  PDFView.swift
//  umra
//
//  Created by Akhmed on 12.02.23.
//





import SwiftUI
import PDFKit

struct PDFViewWrapper: View {
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.bottom)
            
            VStack {
                PDFViewRepresented()
            }
        }
    }
}





struct PDFViewRepresented: UIViewRepresentable {
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        if let url = Bundle.main.url(forResource: "hadj_i_umra", withExtension: "pdf") {
            pdfView.document = PDFDocument(url: url)
        }
                pdfView.autoScales = true // Adjusts the PDF view's scale to fit the window
                pdfView.displayMode = .singlePageContinuous // Displays one page at a time
                pdfView.usePageViewController(true, withViewOptions: nil) // Enables page swiping
                pdfView.backgroundColor = UIColor.white // Sets the background color to black
                return pdfView
    }

    func updateUIView(_ uiView: PDFView, context: Context) {
        // Update the view if needed
    }
}

















struct PDFView_Previews: PreviewProvider {
    static var previews: some View {
        PDFViewWrapper()
    }
}
