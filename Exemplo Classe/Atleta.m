//
//  Atleta.m
//  Exemplo Classe
//
//  Created by Usuário Convidado on 05/03/2018.
//  Copyright © 2018 Joana Durvalo. All rights reserved.
//

#import "Atleta.h"

@implementation Atleta
// Implementando os Getters and Setters

-(void)setNome:(NSString *)_nome{
    nome=_nome;
}

-(NSString *)getNome{
    return nome;
}

-(void)setIdade:(int)_idade{
    idade=_idade;
}

-(int)getIdade{
    return idade;
}

-(void)calcularImcComPeso:(float)peso
                  eAltura:(float)altura{
    float imc;
    imc = peso/(altura*altura);
    NSLog(@"O IMC de %@ é %0.2f", [self getNome], imc);
}

-(NSString *)calcularRendimentoComDistancia:(float)metros
                                     eTempo:(float)horas{
    float resultado = metros/horas;
    NSString *texto = [NSString stringWithFormat:@"O rendimento do atleta é %0.2f metros/hora", resultado];
    return texto;
}

-(Atleta *)initWithNome:(NSString *)_nome
               andIdade:(int)_idade{
    self = [super init]; // testando se a inicializaçāo está ok 
    if(self){
        nome = _nome;
        idade = _idade;
    }
    return self;
}

@end
