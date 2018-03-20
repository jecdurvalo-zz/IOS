//
//  main.m
//  ExercicioModel
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 Joana Durvalo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Enfermeira.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Enfermeira *e =[[Enfermeira alloc]init]; // Instanciando um objeto
        
        e.nome = @"Maria";
        e.coren = 456789;
        e.salario = 3000;
        e.plantao = true;
        
        
        /* Também pode ser assim
         
        [e setNome:@"Carmen"];
        [e setCoren:123456];
        [e setSalario:5000.00];
        [e setPlantao: true];
         
         */
        
        NSLog(@"Nome: %@", [e nome]);
        NSLog(@"Coren: %i", [e coren]);
        NSLog(@"Salario: %0.2f", [e salario]);
        
        [e medicarComRemedio:@"Dipirona"];
        NSLog[@"%@",[e vacinarComPaciente:@"Joana"]];
        
        
    }
    return 0;
}
