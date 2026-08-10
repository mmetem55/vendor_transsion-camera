.class public Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "RestoreDefault.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RestoreDefault"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 29
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_restore_default"

    .line 32
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v2, "key_restore_settings"

    const-string v3, "on"

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_restore_settings"

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 60
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "on"

    .line 42
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "off"

    .line 43
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 9

    .line 70
    sget-object v0, Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "on"

    .line 71
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "off"

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v4, "key_restore_settings_notify_ui"

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    const-string v5, "begin"

    invoke-virtual {v2, v4, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->restoreSharedPreferences()Z

    .line 74
    sget-object v2, Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    const-string v2, "key_restore_settings"

    const-string v5, "on,off"

    .line 75
    invoke-virtual {p1, v2, v1, v5}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "key_flash"

    .line 79
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_flash_facade"

    .line 80
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_picture_size"

    .line 81
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_picture_quality"

    .line 82
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_quality"

    .line 83
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_guidelines"

    .line 84
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_level"

    .line 85
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_face_beauty"

    .line 86
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_slimbody_face_beauty"

    .line 87
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_slimbody_custom"

    .line 88
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_slimbody_info"

    .line 89
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_multi_face_beauty"

    .line 90
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_asd"

    .line 91
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_hdr"

    .line 92
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_com_video_hdr"

    .line 93
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_dol_video_hdr"

    .line 94
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_360_video_hdr"

    .line 95
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_mirror"

    .line 96
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_self_timer"

    .line 97
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_touch_capture"

    .line 98
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_camera_zoom"

    .line 99
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_camera_click_zoom"

    .line 100
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_location"

    .line 101
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_shutter_sound"

    .line 102
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_exposure"

    .line 103
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_auto_watermark"

    .line 104
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_volume_key"

    .line 105
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "wide_camera"

    .line 106
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "front_wide_camera"

    .line 107
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_macro"

    .line 108
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_distortion_correction"

    .line 109
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_screen_flash"

    .line 110
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_filter"

    .line 111
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_super_definition"

    .line 112
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_fun_duration"

    .line 113
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_fun_speed"

    .line 114
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_anti_video"

    .line 115
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_eye_detection"

    .line 116
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_auto_focus_switch"

    .line 117
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_animal_eye_detection"

    .line 118
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_auto_macro_switch"

    .line 119
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_face_detection"

    .line 120
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_facebeauty"

    .line 121
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_portrait"

    .line 122
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_ai_group_photo"

    .line 123
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_horizon_switch_wide"

    .line 124
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_algorithm_migrate"

    .line 125
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_iso"

    .line 126
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_exposure_time"

    .line 127
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_white_balance"

    .line 128
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_manual_white_balance"

    .line 129
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_manual_focus"

    .line 130
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_metering_mode"

    .line 131
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_fingerprint_capture"

    .line 132
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_jpeg_quality"

    .line 133
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_slimbody_info"

    .line 134
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_slimbody_face_beauty"

    .line 135
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_slimbody_custom"

    .line 136
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_multi_face_beauty"

    .line 137
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_smile_detection"

    .line 138
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_gesture_detection"

    .line 139
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_voice_detection"

    .line 140
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_portraitmode_enhance"

    .line 141
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_time_lapse"

    .line 142
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_time_lapse_duration"

    .line 143
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_smart_mode_order"

    .line 144
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_asd_enhance"

    .line 145
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_live_result"

    .line 146
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_human_effect_index"

    .line 147
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_setting_barcode"

    .line 148
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_ai_face_beauty_smart_detection"

    .line 149
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_dual_device"

    .line 150
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_dual_cam_split_style"

    .line 151
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_dual_cam_switch_screen"

    .line 152
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_ai_detection"

    .line 153
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_transsion_filter"

    .line 154
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_transsion_filter_style"

    .line 155
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_ai_shutter"

    .line 156
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_ai_shutter_switch"

    .line 157
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_filter"

    .line 158
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_filter_style"

    .line 159
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_effect"

    .line 160
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_effect_style"

    .line 161
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_frame"

    .line 162
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_frame_style"

    .line 163
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_sight_shock"

    .line 164
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_timelapse_photo_duration"

    .line 165
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_timelapse_photo_interval"

    .line 166
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_taint_detection"

    .line 167
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "key_time_watermark"

    invoke-virtual {v5, v8, v3, v6, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v8, "key_city_watermark"

    invoke-virtual {v5, v8, v3, v6, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v8, "key_text_watermark"

    invoke-virtual {v5, v8, v3, v6, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v8, "key_brand_watermark"

    invoke-virtual {v5, v8, v3, v6, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "key_makeup_feature"

    .line 175
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_video_makeup_style"

    .line 176
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_mu_face_beauty"

    .line 177
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_mu_slimbody"

    .line 178
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_mu_stereo"

    .line 180
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_vip_stereo"

    .line 181
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "key_mu_monomer"

    .line 182
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v5, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postDefaultRestriction(Ljava/util/List;)V

    .line 186
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 188
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "end"

    invoke-virtual {p1, v4, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    :cond_0
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const-string p0, "-"

    .line 193
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method
