﻿import flash.events.*;/* ***********************************************************************ActionScript 3 Experiment by Barbara Kaskoszwww.flashandmath.comLast modified: March 4, 2009************************************************************************ *//*We are creating an instance of the Loader class, 'loader'.'loader' will load our external swf file.*/var loader:Loader=new Loader();/*We are creating a variable mcExternal in which we will storethe content of the loaded swf. This is tangential to our experimentand illustrates access to methods of the loaded swf from the containerswf.*/var mcExternal:MovieClip;mcExplanations.visible=false;this.addChild(loader);loader.load(new URLRequest("VOCWordToYourMp3.swf"));/*We are listening to the event 'COMPLETE'. We could listen toEvent.INIT which is fired when the content of a loaded swf is readyto be accessed. It doesn't make any difference to our experiment.*/loader.contentLoaderInfo.addEventListener(Event.COMPLETE,swfIn);function swfIn(e:Event):void {		loader.x=40;    loader.y=45;		loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,swfIn);		mcExternal=loader.content as MovieClip;		//mcExternal.renderOrangeCircles();		//mcWait is a movie clip with the message to the user to wait.		mcWait.visible=false; 	}/*btnUnload.addEventListener(MouseEvent.CLICK,unloadSwf);function unloadSwf(e:MouseEvent):void {		loader.unload();		mcExternal=null;		mcExplanations.visible=true;	}*//*The btnUnload unloads ext_docclass.swf. All that means, however, is thatthe file is removed as a child of 'loader'. The file stays in the memoryand all listeners attached to 'stage' in ext_docclass.swf as wellas ENTER_FRAME listeners attached to the removed instance of the externalswf, keep executing.You can check that by uncommenting line 95 in ThreeCircles.as. (The 'trace'call in 'whenClicked' listener.), recompiling ext_docclass.swf, and testing this file again.If you uncomment line 81 in the constructor of ThreeCircles.as:this.addEventListener(Event.ENTER_FRAME,threeEnter);save ThreeCircles.as, recompile, ext_docclass.swf, and testthis file again, you will see that the ENTER_FRAME listenerkeeps running, too, even though it was added to the instanceof ext_docclass.swf and not to 'stage'.The Loader.unload() method doesn't do much. In Flash Player 10,there is a new method, Loader.unloadAndStop(). The latter methodstops execution of the left-over listeners and promptsthe garbage collector to remove the external swf filefrom memory.You can experiment with cs4container_3.fla in swfsandstage.zip to see the effects of Loader.unloadAndStop().*/