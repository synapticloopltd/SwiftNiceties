//
//  SwiftNicetiesUIScreen.swift
//  
//
//  Created by syanpticloop on 21/10/2022.
//

import Foundation;
import SwiftUI;

@available(macOS 10.15, *)
public extension View {
	func roundedInnerShadow() -> some View {
		modifier(RoundedInnerShadow());
	}
}

@available(macOS 10.15.0, *)
private struct RoundedInnerShadow: ViewModifier {
	func body(content: Content) -> some View {
		content
			.cornerRadius(0)
			.background(RoundedRectangle(cornerRadius: 15).fill(Color.white.opacity(0.35)))
			.overlay(RoundedRectangle(cornerRadius: 15)
				.stroke(Color(red: 236/255, green: 234/255, blue: 235/255),
								lineWidth: 4)
					.shadow(color: Color(red: 192/255, green: 189/255, blue: 191/255),
									radius: 3, x: 5, y: 5)
						.clipShape(
							RoundedRectangle(cornerRadius: 15)
						)
							.shadow(color: Color.white, radius: 2, x: -2, y: -2)
							.clipShape(
								RoundedRectangle(cornerRadius: 15)
							)
			)
		
	}
}
