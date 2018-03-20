//
//  Pokemon.h
//  Jogo
//
//  Created by Usuário Convidado on 19/03/2018.
//  Copyright © 2018 Joana Durvalo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pokemon : NSObject

@property(nonatomic, retain) NSString *nome;
@property(nonatomic) int cp;
@property(nonatomic, retain) NSString *tipoPokemon;

// Construtor
-(Pokemon *) initWithNome:(NSString *) _nome
                    andCp:(int) _cp
                    andTipoPokemon:(NSString *) _tipoPokemon;

// Metodo void
-(void)atacarInimigo:(NSString *)inimigo;

// Metodo function
-(NSString *)atacarInimigo:(NSString *)inimigo comPoder:(NSString *)poder;

@end
