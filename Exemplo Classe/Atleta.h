//
//  Atleta.h
//  Exemplo Classe
//
//  Created by Usuário Convidado on 05/03/2018.
//  Copyright © 2018 Joana Durvalo. All rights reserved.
//

#import <Foundation/Foundation.h>


//Classe apenas para declarar as variaveis
@interface Atleta : NSObject{
    NSString *nome; // Qualquer coisa que no seja classe precisa do *
    int idade;
}

-(void)setNome:(NSString *)_nome;
-(NSString *)getNome;


-(void)setIdade:(int)_idade;
-(int)getIdade;


-(void)calcularImcComPeso:(float)peso
                  eAltura:(float)altura;

-(NSString *)calcularRendimentoComDistancia:(float)metros
                                     eTempo:(float)horas;


-(Atleta *)initWithNome:(NSString *)_nome
               andIdade:(int)_idade;
@end
