/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Obtém as teclas pressionadas
esquerda = keyboard_check(ord("A"));
direita = keyboard_check(ord("D"));


// Verifica se o player está se movendo
if (esquerda or direita)
{
    if (esquerda) velh = -vel;
    else if (direita) velh = vel;
    else velh = 0;
    
    // Move o player
    x += velh;
	gravity = 0.2;
}

//if (x >= -64 )
//{
//	x = 1344;
//}

// Verifica se o player está no chão
//no_chao = place_meeting(x, y+1, obj_wall);

//// Verifica se o player está pressionando a tecla de pulo
//if (keyboard_check_pressed(vk_space) && no_chao)
//{
//    // Define a velocidade vertical do player
//    velv = pulo;
//}
////aplica a gravidade
//velv += grv;

