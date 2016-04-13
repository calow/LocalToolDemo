package com.example.localtooldemo;

import java.util.HashMap;
import java.util.Map;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebView;
import android.widget.FrameLayout;

public class MainActivity extends Activity {
	
	private Map<String, WebView> webviews;
	
	private FrameLayout fl;
	
	private WebView main;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		findView();
		init();
		loadPage();
	}
	
	public void findView(){
		fl = (FrameLayout) findViewById(R.id.fl_main);
	}
	
	public void init(){
		webviews = new HashMap<String, WebView>();
		main = new WebView(this);
		LayoutParams params = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
		main.setLayoutParams(params);
		fl.addView(main);
		webviews.put("mainWebview", main);
	}
	
	public void loadPage(){
		main.loadUrl("file:///android_asset/apps/calow/www/test.html");
	}

}
