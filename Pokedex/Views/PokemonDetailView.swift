//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by Buğra on 9.11.2022.
//

import SwiftUI

struct PokemonDetailView: View {
    @EnvironmentObject var vm: ViewModel
    let pokemon: Pokemon
    
    var body: some View {
        VStack {
            PokemonView(pokemon: pokemon)
            VStack(spacing: 10) {
                Text("**ID**: \(vm.pokemonDetails?.id ?? 0)")
                Text("**ID**: \(vm.formatHW(value: vm.pokemonDetails?.weight ?? 0)) KG")
                Text("**ID**: \(vm.formatHW(value: vm.pokemonDetails?.height ?? 0)) M")
            }
        }
        .onAppear {
            vm.getDetails(pokemon: pokemon)
        }
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: Pokemon.samplePokemon)
            .environmentObject(ViewModel())
    }
}
