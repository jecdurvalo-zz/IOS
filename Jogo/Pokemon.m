//
//  Pokemon.m
//  Jogo
//
//  Created by Usuário Convidado on 19/03/2018.
//  Copyright © 2018 Joana Durvalo. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

-(Pokemon *) initWithNome:(NSString *) _nome
                    andCp:(int) _cp
                    andTipoPokemon:(NSString *) _tipoPokemon{
    
    self = [super init];
    if (self){ //testa se a inicialização foi ok
        self.nome = _nome;
        self.cp = _cp;
        self.tipoPokemon = _tipoPokemon;
    }
    return self;
}

// Metodo void
-(void)atacarInimigo:(NSString *)inimigo{
    NSLog(@"Atacando o %@", inimigo);
}

// Metodo function
-(NSString *)atacarInimigo:(NSString *)inimigo comPoder:(NSString *)poder{
    return [NSString stringWithFormat:@"Atacando o %@ com o poder %@", inimigo, poder];
}

@end
