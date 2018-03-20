//
//  Enfermeira.m
//  ExercicioModel
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 Joana Durvalo. All rights reserved.
//

#import "Enfermeira.h"


@implementation Enfermeira

-(void)medicarComRemedio:(NSString *)remedio{
    NSLog(@"Eu %@ mediquei com o remedio %@!", self.nome, remedio);
}

-(NSString *)vacinarComPaciente:(NSString *)paciente{
    return[NSString stringWithFormat:@"Vacinei o paciente %@ ", paciente];
}


@end
