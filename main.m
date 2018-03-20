//
//  main.m
//  Jogo
//
//  Created by Usuário Convidado on 19/03/2018.
//  Copyright © 2018 Joana Durvalo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Pokemon *p =[[Pokemon alloc]init];
        p.nome = @"Pikachu";
        p.cp = 250;
        p.tipoPokemon = @"Eletric";
        
        NSLog(@"Nome do pokemon: %@ ", p.nome);
        NSLog(@"CP do pokemon: %i ", p.cp);
        NSLog(@"Tipo do pokemon: %@ ", p.tipoPokemon);
        
        // Executando os métodos
        [p atacarInimigo:@"MeowTwo"];
        NSLog(@"%@",[ p atacarInimigo:@"Meowtwo" comPoder:@"Eletricidade Estática"]);
        
        
        // Construtor pokemon 2
        Pokemon *p2 =[[Pokemon alloc]initWithNome:@"Mew" andCp:1236 andTipoPokemon:@"Psycho"];
        NSLog(@"Nome do pokemon: %@ ", p2.nome);
        NSLog(@"CP do pokemon: %i ", p2.cp);
        NSLog(@"Tipo do pokemon: %@ ", p2.tipoPokemon);
        
    }
    
    return 0;
}
