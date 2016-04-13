package com.example.localtooldemo;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;

public class SplashActivity extends Activity {

	protected static final String TAG = "SplashActivity";

	boolean initComplete = false;
	private Context mContext;
	private ImageView mImageView;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		View view = View.inflate(this, R.layout.activity_welcome, null);
		setContentView(view);
		mContext = this;
		mImageView = (ImageView) findViewById(R.id.iv_welcome);

		AlphaAnimation aa = new AlphaAnimation(0.3f, 1.0f);
		aa.setDuration(2000);
		view.startAnimation(aa);
		init();
	}

	public void init() {
		mImageView.postDelayed(new Runnable() {

			@Override
			public void run() {
				Intent intent = new Intent(mContext, MainActivity.class);
				startActivity(intent);
				finish();
			}
		}, 3000);
	}
}
