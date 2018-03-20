//
//  main.m
//  Exemplo Classe
//
//  Created by Usuário Convidado on 05/03/2018.
//  Copyright © 2018 Joana Durvalo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Atleta.h"
#import "Esporte.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Atleta *a = [[Atleta alloc]init];
        [a setNome:@"José da Silva"];
        [a setIdade:23];
        
        NSLog(@"O Iron Man %@ tem %d anos", [a getNome], [a getIdade]);
        [a calcularImcComPeso:80 eAltura:1.70];
        NSLog(@"%@", [a calcularRendimentoComDistancia:5000 eTempo:2]);
        
        Atleta *a2 = [[Atleta alloc] initWithNome:@"Joana Durvalo" andIdade:20];
        
    
        Esporte *e = [[Esporte alloc]init];
        //get & set [objeto atributo]
        [e setModalidade:@"Judô"];
        [e setQtdeFederados:300];
    
        NSLog(@"Esporte: %@", [e modalidade]);
        
        //Get & Set usando object.atributo
        e.modalidade = @"Nataçāo";
        e.qtdeFederados = 500;
        NSLog(@"Esporte: %@", e.modalidade);
        
        [e premiar];
}

return 0;
}
