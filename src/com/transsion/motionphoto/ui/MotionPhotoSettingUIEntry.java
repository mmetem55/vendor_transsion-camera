package com.transsion.motionphoto.ui;

import android.content.res.Resources;

import com.transsion.camera.app.common.provider.SettingUIEntryBase;
import com.transsion.camera.app.common.ui.setting.ITopBarItemUI;
import com.transsion.camera.app.common.ui.setting.TopBarItemUI;

public class MotionPhotoSettingUIEntry extends SettingUIEntryBase {

    public MotionPhotoSettingUIEntry(Resources resources) {
        super(resources);
    }

    @Override
    public ITopBarItemUI createTopBarItemUI() {
        TopBarItemUI ui = new TopBarItemUI(new MotionPhotoSettingUISpec(mResources));
        mITopBarItemUI = ui;
        return ui;
    }
}
