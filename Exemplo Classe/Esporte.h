//
//  Esporte.h
//  Exemplo Classe
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 Joana Durvalo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Esporte : NSObject

//Gettters and Setters
@property(nonatomic, retain)NSString *modalidade;
@property(nonatomic)int qtdeFederados;

-(void)premiar;

@end
