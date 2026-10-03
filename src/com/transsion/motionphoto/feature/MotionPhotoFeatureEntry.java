package com.transsion.motionphoto.feature;

import android.content.Context;
import android.content.res.Resources;

import com.transsion.camera.app.common.provider.FeatureEntryBase;
import com.transsion.camera.app.common.setting.ICameraSetting;
import com.transsion.camera.app.common.setting.SettingBase;

public class MotionPhotoFeatureEntry extends FeatureEntryBase {

    private volatile SettingBase mSettingBase;

    public MotionPhotoFeatureEntry(Context context, Resources resources) {
        super(context, resources);
    }

    @Override
    public Object createFeature() {
        if (mSettingBase == null) {
            mSettingBase = new MotionPhotoSetting();
        }
        return mSettingBase;
    }

    @Override
    public String getFeatureName() {
        return MotionPhotoFeatureEntry.class.getName();
    }

    @Override
    public Class getType() {
        return ICameraSetting.class;
    }
}
