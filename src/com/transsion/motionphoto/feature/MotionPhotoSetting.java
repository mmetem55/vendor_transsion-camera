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

    private final Context mContext;

    public MotionPhotoSetting() {
        this(null);
    }

    public MotionPhotoSetting(Context context) {
        this.mContext = context;
    }

    private Context getEffectiveContext() {
        if (mContext != null) {
            return mContext.getApplicationContext();
        }
        return TransMotionPhotoBridge.currentApplication();
    }

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
        setDefaultValue(defVal);

        // 1. Doğrudan SharedPreferences'tan kaydedilmiş değeri oku
        String persisted = readFromSharedPreferences(null);

        // 2. Eğer SharedPreferences henüz oluşmamışsa varsayılan olarak "off" kullan
        if (persisted == null && mSettingDataStore != null) {
            persisted = mSettingDataStore.getValue(getKey(), defVal, getStoreScope());
        }

        String resolved = (persisted != null && values.contains(persisted)) ? persisted : defVal;

        setValue(resolved);
        if (mSettingDataStore != null) {
            mSettingDataStore.setValue(getKey(), resolved, getStoreScope(), true);
        }
        writeToSharedPreferences(resolved);
        TransMotionPhotoBridge.setEnabled("on".equals(resolved));
    }

    @Override
    public void setValue(String value) {
        super.setValue(value);
        TransMotionPhotoBridge.setEnabled("on".equals(value));
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
            Context context = getEffectiveContext();
            if (context != null) {
                SharedPreferences sp = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
                if (sp.contains(SETTING_KEY)) {
                    return sp.getString(SETTING_KEY, fallback);
                }
            }
        } catch (Throwable ignored) {}
        return fallback;
    }

    private void writeToSharedPreferences(String value) {
        try {
            Context context = getEffectiveContext();
            if (context != null) {
                SharedPreferences sp = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
                sp.edit().putString(SETTING_KEY, value).commit(); // commit() ile diske anında senkron yazım
            }
        } catch (Throwable ignored) {}
    }
}
