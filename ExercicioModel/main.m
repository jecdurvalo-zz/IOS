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
        
        Enfermeira *e =[[Enfermeira alloc]init];
        [e setNome:@"Carmen"];
        [e setCoren:123456];
        [e setSalario:5000.00];
        [e setPlantao: true];
    
        
        NSLog(@"Nome: %@", [e nome]);
        NSLog(@"Coren: %i", [e coren]);
        NSLog(@"Salario: %f", [e salario]);
        
        [e medicarPaciente];
        
    }
    return 0;
}
