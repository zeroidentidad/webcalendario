var calendariooculto = new Array();
var calendariosocultos = 1;
for(var i = 1;i<20;i++){calendariooculto[i] = 1;}
$(document).ready(inicio);
function inicio(){
$("#ocultacalendarios").click(ocultacalendarios);
$(".calendariocol").click(function(){$(this).toggleClass("gris");});
$(".calendariocol").click(togglecalendarios);
$("#anonimo").click(function(){$(".evento").css("background","black");$(".motivoevento").text("");$(".evento").css("color","white");});
$("#anonimo2").click(function(){$(".motivoevento").text("");});
$("#nuevoevento").hide();
$(".dia").click(muestra);
$("#botonanadircalendario").click(muestracalendario);
//$(".eliminar").hide();
//$(".dia").hover(muestraeliminar);
$(".evento").draggable();
$( ".dia" ).droppable({
	      drop: function( event, ui ) { /*"&mes="+ui.draggable.attr("mes")+"&dia="+ui.draggable.attr("dia")+"&hora="+ui.draggable.attr("hora")+*/
	        $("#ajax").load("acciones/cambia.jsp?idevento="+ui.draggable.attr("idevento")+"&nuevodia="+$(this).attr("dia"));
	      	console.log("El evento a mover es: "+ui.draggable.attr("idevento"));
	      	console.log("Y el dia a moverlo es: "+$(this).attr("dia"));
	      	setTimeout(function(){window.location="?";},1000);
	      }
	    });
$("#cerrarnuevoevento").click(cierra);
$("#cerrarnuevocalendario").click(cierracalendario);
}
function ocultacalendarios(){
	if(calendariosocultos == 1){
		$("#calendarios").fadeOut("slow");
		calendariosocultos = 0;
	
	}else{
		$("#calendarios").fadeIn("slow");
		calendariosocultos = 1;
	}
}
function togglecalendarios(){
	var coge = $(this).attr("");
	if(calendariooculto[$(this).attr('idcalendario')] == 1){
		$('[idcaldia = '+$(this).attr('idcalendario')+']').fadeOut("slow");
		calendariooculto[$(this).attr('idcalendario')] = 0;
	}else{
		$('[idcaldia = '+$(this).attr('idcalendario')+']').fadeIn("slow");
		calendariooculto[$(this).attr('idcalendario')] = 1;
	}
}
function muestra(){
	$("#calendario").addClass("difuminado");
	$("#nuevoevento").fadeIn();
	var dia = $(this).attr("id");
	var numdia = $(this).attr("dia");
	$("#dimedia").val(numdia);
	$("#nuevoevento").append('<input type="hidden" name="dia" value="'+dia+'">');
}
function muestracalendario(){
	$("#calendario").addClass("difuminado");
	$("#nuevocalendarioform").fadeIn();
	/*var dia = $(this).attr("id");
	var numdia = $(this).attr("dia");
	$("#dimedia").val(numdia);
	$("#nuevoevento").append('<input type="hidden" name="dia" value="'+dia+'">'); */
}
function cierra(){
	$("#calendario").removeClass("difuminado");
	$("#nuevoevento").fadeOut();
}
function cierracalendario(){
	$("#calendario").removeClass("difuminado");
	$("#nuevocalendarioform").fadeOut();
}
function muestraeliminar(){
	
}
