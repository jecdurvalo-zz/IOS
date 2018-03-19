//
//  Enfermeira.h
//  ExercicioModel
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 Joana Durvalo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Enfermeira : NSObject

@property(nonatomic, retain) NSString *nome;
@property(nonatomic) int coren;
@property(nonatomic) float salario;
@property(nonatomic) bool plantao;


-(void)medicarComRemedio:(NSString *)remedio;
-(NSString *)vacinarComPaciente:(NSString *)paciente eVacina:(NSString *)vacina;

/*
-(Enfermeira *)initWithNome:(NSString *)_nome
                        eCoren:(int)_coren
                        ePlantao:(bool)_plantao
                   eSalario:(float)_salario{

    self = [super init];
    
    if(self){
        [self e.nome = _nome];
        [self e.coren = _coren];
        [self e.plantao = _plantao];
        [self e.salario = _salario];
    }
} */


@end
