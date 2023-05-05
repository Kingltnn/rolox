function id(obbj){
	return document.getElementById(obbj);
}
var page;
var lm,mx;
var md=false;
var sh=0;
var en=false;

function pageslide() {
	    page=document.getElementsByTagName("center");
		
	if(page.length>0){
		page[0].style.zIndex=2;
	}
	for(i=0;i<page.length;i++){

		page[i].className="paperpage";
		page[i].innerHTML+="<span class=tip>"+(i+1)+"/"+page.length+"</span>";
		page[i].id="page"+i;
		page[i].i=i;
		page[i].onmousedown=function(e){
			if(!en){
				if(!e){e=e||window.event;}
				lm=this.offsetLeft;
				mx=(e.pageX)?e.pageX:e.x;
				this.style.cursor="w-resize";
				md=true;
				if(document.all){
					this.setCapture();
				}else{	
					//window.captureEvents(Event.MOUSEMOVE|Event.MOUSEUP);
					window.addEventListener("mousedown mouseup", pageslide, true) 
				}
			}
		}
		page[i].onmousemove=function(e){
			if(md){
				en=true;
				if(!e){e=e||window.event;}
				var ex=(e.pageX)?e.pageX:e.x;
				this.style.left=ex-(mx-lm)+350+"px";
				if(this.offsetLeft<75){
					var cu=(this.i==0)?page.length-1:this.i-1;
					page[sh].style.zIndex=0;
					page[cu].style.zIndex=1;
					this.style.zIndex=2;
					sh=cu;
				}
				if(this.offsetLeft>75){
					var cu=(this.i==page.length-1)?0:this.i+1;
					page[sh].style.zIndex=0;
					page[cu].style.zIndex=1;
					this.style.zIndex=2;
					sh=cu;
				}	
				
				
			}
		}
		page[i].onmouseup=function(){
			this.style.cursor="default";
			md=false;
			if(document.all){
				this.releaseCapture();
			}else{
				//window.releaseEvents(Event.MOUSEMOVE|Event.MOUSEUP);
				window.removeEventListener("mousedown mouseup", pageslide, false) 

			}
			flyoutb(this);
		}
		
		}
	
}

function flyoutb(obbj){
	if(obbj.offsetLeft<75){
		if(		(obbj.offsetLeft + 350 - 20)	>	-275	){
			obbj.style.left=obbj.offsetLeft + 350 - 20+"px";
			window.setTimeout("flyoutb(id('"+obbj.id+"'));",0);
		}else{
			obbj.style.left=-275+"px";
			obbj.style.zIndex=0;
			flyin(id(obbj.id));
		}
	}
	if(obbj.offsetLeft>75){
		if(		(obbj.offsetLeft + 350 + 20)	<	1125	){
			obbj.style.left=obbj.offsetLeft + 350 + 20+"px";
			window.setTimeout("flyoutb(id('"+obbj.id+"'));",0);
		}else{
			obbj.style.left=1125+"px";
			obbj.style.zIndex=0;
			flyin(id(obbj.id));
		}
	}
}
function flyin(obbj){
	if(obbj.offsetLeft<75){
		if(		(obbj.offsetLeft + 350 + 20)	<	425		){
			obbj.style.left=obbj.offsetLeft + 350 + 20+"px";
			window.setTimeout("flyin(id('"+obbj.id+"'));",0);
		}else{
			obbj.style.left=425+"px";
			en=false;
		}
	}
	if(obbj.offsetLeft>75){
		if(		(obbj.offsetLeft + 350 - 20)	>	425		){
			obbj.style.left=obbj.offsetLeft + 350 - 20+"px";
			window.setTimeout("flyin(id('"+obbj.id+"'));",0);
		}else{
			obbj.style.left=425+"px";
			en=false;
		}
	}
}