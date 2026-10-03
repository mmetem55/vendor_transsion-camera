package com.transsion.motionphoto.feature;

import android.content.Context;
import android.content.SharedPreferences;

import com.transsion.camera.app.common.setting.ICameraSetting;
import com.transsion.camera.app.common.setting.SettingBase;
import com.transsion.motionphoto.TransMotionPhotoBridge;

import java.util.Arrays;
import java.util.List;

public class MotionPhotoSetting extends SettingBase {

    private static final String SETTING_KEY = "key_motion_photo";
    private static final String PREF_NAME = "transsion_motion_photo_prefs";
    private static final List<String> DEFAULT_SUPPORTED = Arrays.asList("on", "off");

    @Override
    public String getKey() {
        return SETTING_KEY;
    }

    @Override
    public ICameraSetting.SettingType getSettingType() {
        return ICameraSetting.SettingType.PHOTO;
    }

    @Override
    public List<String> getSupport() {
        List<String> entries = getEntryValues();
        if (entries != null && !entries.isEmpty()) {
            return entries;
        }
        return DEFAULT_SUPPORTED;
    }

    @Override
    protected void initValueAndSupport(List<String> supportedValues, String defaultValue) {
        List<String> values = (supportedValues != null && !supportedValues.isEmpty())
                ? supportedValues
                : DEFAULT_SUPPORTED;

        String defVal = "off";

        setSupportedPlatformValues(values);
        setSupportedEntryValues(values);
        setEntryValues(values);

        String persisted = readFromSharedPreferences(defVal);

        if (persisted == null && mSettingDataStore != null) {
            persisted = mSettingDataStore.getValue(getKey(), defVal, getStoreScope());
        }

        String resolved = (persisted != null && values.contains(persisted)) ? persisted : defVal;

        setDefaultValue(defVal);
        setValue(resolved);
        TransMotionPhotoBridge.setEnabled("on".equals(resolved));
    }

    @Override
    public void onValueChanged(String newValue) {
        if (!newValue.equals(getValue())) {
            setValue(newValue);
            if (mSettingDataStore != null) {
                mSettingDataStore.setValue(getKey(), newValue, getStoreScope(), true);
            }
            writeToSharedPreferences(newValue);
            TransMotionPhotoBridge.setEnabled("on".equals(newValue));
        }
    }

    private String readFromSharedPreferences(String fallback) {
        try {
            Context context = TransMotionPhotoBridge.currentApplication();
            if (context != null) {
                SharedPreferences sp = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
                if (sp.contains(SETTING_KEY)) {
                    return sp.getString(SETTING_KEY, fallback);
                }
            }
        } catch (Throwable ignored) {}
        return null;
    }

    private void writeToSharedPreferences(String value) {
        try {
            Context context = TransMotionPhotoBridge.currentApplication();
            if (context != null) {
                SharedPreferences sp = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
                sp.edit().putString(SETTING_KEY, value).apply();
            }
        } catch (Throwable ignored) {}
    }
}
