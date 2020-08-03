package com.reactlibrary;

import com.facebook.react.bridge.ReactMethod;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.uimanager.ThemedReactContext;

import android.widget.TextView;

public class BoringTextModule extends SimpleViewManager<TextView> {
    public BoringTextModule() {
        super();
    }

    @ReactProp(name = "text")
    public void setText(TextView textView, String text) {
        textView.setText(text);
    }

    @ReactProp(name = "fontSize")
    public void setFontSize(TextView textView, float fontSize) {
        textView.setTextSize(fontSize);
    }

    @Override
    public String getName() {
        return "BoringText";
    }

    @ReactMethod
    public TextView createViewInstance(ThemedReactContext context) {
        final TextView textView = new TextView(context);

        // This centre-aligns the text. This is an unconfigurable
        // default for now.
        textView.setGravity(1);

        return textView;
    }
}