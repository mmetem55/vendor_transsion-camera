package com.transsion.motionphoto.ui;

import android.content.res.Resources;
import android.content.res.TypedArray;

import com.transsion.camera.app.ui.setting.spec.ToggleSettingUISpec;

public class MotionPhotoSettingUISpec extends ToggleSettingUISpec {

    private static final String PKG = "com.transsion.camera";
    private static final String KEY = "key_motion_photo";

    private static volatile Resources sBootResources;

    public MotionPhotoSettingUISpec(Resources resources) {
        super(KEY, stash(resources));
    }

    private static Resources stash(Resources r) {
        sBootResources = r;
        return r;
    }

    private static int id(String name, String type) {
        Resources r = sBootResources;
        if (r == null) return 0;
        return r.getIdentifier(name, type, PKG);
    }

    @Override
    protected int initEntryViewId() {
        return id("setting_ui_item_motion_photo", "id");
    }

    @Override
    protected TypedArray initEntryDrawables(Resources resources) {
        return resources.obtainTypedArray(id("motion_photo_setting_entry_drawables", "array"));
    }

    @Override
    protected android.graphics.drawable.Drawable initIcon(Resources resources) {
        return resources.getDrawable(id("ic_motion_photo_on", "drawable"), null);
    }

    @Override
    protected String[] initSummary(Resources resources) {
        return new String[0];
    }

    @Override
    protected String initTitle(Resources resources) {
        return id("motion_photo_setting_title", "string") != 0
                ? resources.getString(id("motion_photo_setting_title", "string"))
                : "Hareketli Fotoğraf";
    }
}
