
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	int w;
	int h;
	int pX;
	int py;
	int wt;
	int ht;
	SESprite Greninja;
	SESprite ray;
	SESprite rayman;
	SESprite wolf;
	SESprite text;

	SESprite Greninja2;
	SESprite ray2;
	SESprite rayman2;
	SESprite wolf2;
	
	public void initialize(SEResourceCache rsc) {
		w = get_scene_width();
		h = get_scene_height();
		
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("red"), w,h));

		rsc.prepare_image("myGreninja","Greninja",w*0.5,h*0.5);
		rsc.prepare_image("myray","ray",w*0.5,h*0.5);
		rsc.prepare_image("myrayman","rayman",w*0.5,h*0.5);
		rsc.prepare_image("mywolf","wolf",w*0.5,h*0.5);
		rsc.prepare_font("myfont","trebuchet ms bold color=black", 40);
		
		Greninja = add_sprite_for_image(SEImage.for_resource("myGreninja"));
		ray = add_sprite_for_image(SEImage.for_resource("myray"));
		rayman = add_sprite_for_image(SEImage.for_resource("myrayman"));
		wolf = add_sprite_for_image(SEImage.for_resource("mywolf"));
			
		Greninja.move(0,0);
		ray.move(0.5*w,0);
		rayman.move(0,h*0.5);
		wolf.move(0.5*w,0.5*h);
		text = add_sprite_for_text(" ", "myfont");
		wt = text.get_width();
		ht = text.get_height();	

		rsc.prepare_image("myGreninja2","Greninja",w,h);
		rsc.prepare_image("myray2","ray",w,h);
		rsc.prepare_image("myrayman2","rayman",w,h);
		rsc.prepare_image("mywolf2","wolf",w,h);
		
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		pX = pi.get_x();
		py = pi.get_y();
		
		if(pX > 0 && pX < w*0.5 && py > 0 && py < h*0.5) {
			text.set_text("Waterfall");
			text.move(w*0.25-wt*0.5,h*0.25-ht*0.5);
			Greninja.set_alpha(0.5);
			rayman.set_alpha(1);
			wolf.set_alpha(1);
			ray.set_alpha(1);
		}

		else if(pX > 0.5*w && pX < w && py > 0 && py < h*0.5) {
			text.set_text("Cloud");
			text.move(w*0.75-wt*0.5,h*0.25-ht*0.5);
			ray.set_alpha(0.5);
			Greninja.set_alpha(1);
			rayman.set_alpha(1);
			wolf.set_alpha(1);
		}

		else if(pX > 0 && pX < w*0.5 && py > 0.5*h && py < h) {
			text.set_text("Rayman");
			text.move(w*0.25-wt*0.5,h*0.75-ht*0.5);
			rayman.set_alpha(0.5);
			Greninja.set_alpha(1);
			wolf.set_alpha(1);
			ray.set_alpha(1);
		}

		else if(pX > 0.5*w && pX < w && py > 0.5*h && py < h) {
			text.set_text("Wolf");
			text.move(w*0.75-wt*0.5,h*0.75-ht*0.5);
			wolf.set_alpha(0.5);
			Greninja.set_alpha(1);
			rayman.set_alpha(1);
			ray.set_alpha(1);
		}

		if( pX > 0.35*w && pX < w*0.5 && py > 0 && py < h*0.15 ) {
			Greninja2 = add_sprite_for_image(SEImage.for_resource("myGreninja2"));
			
			Greninja.move(0,0);
			ray.move(0.5*w,0);
			rayman.move(0,h*0.5);
			wolf.move(0.5*w,0.5*h);
		}
		
		else if( pX >0.75*w  && pX < w && py > 0 && py < h*0.15 ) {
			ray2 = add_sprite_for_image(SEImage.for_resource("myray2"));
		}

		else if( pX >0.35*w  && pX < w*0.5 && py > 0.5*h && py < h*0.65 ) {
			rayman2 = add_sprite_for_image(SEImage.for_resource("myrayman2"));
		}

		else if( pX >0.75*w  && pX < w && py > 0.5*h && py < h*0.65 ) {
			wolf2 = add_sprite_for_image(SEImage.for_resource("mywolf2"));
		}

	/*	if() {
				
			Greninja = add_sprite_for_image(SEImage.for_resource("myGreninja"));
			ray = add_sprite_for_image(SEImage.for_resource("myray"));
			rayman = add_sprite_for_image(SEImage.for_resource("myrayman"));
			wolf = add_sprite_for_image(SEImage.for_resource("mywolf"));
				
			Greninja.move(0,0);
			ray.move(0.5*w,0);
			rayman.move(0,h*0.5);
			wolf.move(0.5*w,0.5*h);
		}*/
	}
	
	public void cleanup() {
		base.cleanup();
	}
}

