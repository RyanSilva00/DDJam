/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



var _margem = room_width - sprite_get_width(spr_caixa_mensagem);

//desenhando a caixa do texto
draw_sprite(spr_caixa_mensagem, -1,0 + _margem/2, room_height -100);

//digitando o texto
var tamnha_do_texto = string_length(texto2);
if (letra <= tamnha_do_texto)
{
	palavra = string_copy(texto2, 1, letra);
	letra++;
}

draw_set_font(Font1);
//desenhando o texto
draw_text_ext(0 + _margem/2 + 10, room_height - 100 +15,palavra, 30,700 - 20);



