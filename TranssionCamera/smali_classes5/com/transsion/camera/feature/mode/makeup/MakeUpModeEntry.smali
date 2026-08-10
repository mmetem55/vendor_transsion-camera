.class public Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;
.super Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.source "MakeUpModeEntry.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceBeautyType:I

.field private mIsSupportMakeup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MakeUpModeEntry"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mIsSupportMakeup:Z

    const/4 p2, 0x1

    .line 23
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mFaceBeautyType:I

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "is_support_makeup"

    invoke-static {p1, v0, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mIsSupportMakeup:Z

    const-string p2, "face_beauty_type"

    .line 28
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mFaceBeautyType:I

    .line 29
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "MakeUpModeEntry"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getModeGuideLayoutsArrayId(Ljava/lang/String;)I
    .locals 3

    .line 71
    sget v0, Lcom/transsion/camera/utils/AreaUtil;->AREA_CODE:I

    .line 73
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_b

    .line 74
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mIsSupportMakeup:Z

    if-eqz p1, :cond_5

    .line 75
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mFaceBeautyType:I

    if-ne p0, v2, :cond_2

    if-ne v2, v0, :cond_0

    .line 77
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_support_make_up_mode_guide_layouts_front_south_asia:I

    goto/16 :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    .line 79
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_support_make_up_mode_guide_layouts_front_africa:I

    goto :goto_0

    .line 81
    :cond_1
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_support_make_up_mode_guide_layouts_front_universal:I

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    .line 85
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_support_make_up_mode_guide_layouts_front_south_asia:I

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_4

    .line 87
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_support_make_up_mode_guide_layouts_front_africa:I

    goto :goto_0

    .line 89
    :cond_4
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_support_make_up_mode_guide_layouts_front_universal:I

    goto :goto_0

    .line 93
    :cond_5
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mFaceBeautyType:I

    if-ne p0, v2, :cond_8

    if-ne v2, v0, :cond_6

    .line 95
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_not_support_make_up_mode_guide_layouts_front_south_asia:I

    goto :goto_0

    :cond_6
    if-ne v1, v0, :cond_7

    .line 97
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_not_support_support_make_up_mode_guide_layouts_front_africa:I

    goto :goto_0

    .line 99
    :cond_7
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_not_support_make_up_mode_guide_layouts_front_universal:I

    goto :goto_0

    :cond_8
    if-ne v2, v0, :cond_9

    .line 103
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_not_support_make_up_mode_guide_layouts_front_south_asia:I

    goto :goto_0

    :cond_9
    if-ne v1, v0, :cond_a

    .line 105
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_not_support_make_up_mode_guide_layouts_front_africa:I

    goto :goto_0

    .line 107
    :cond_a
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_not_support_make_up_mode_guide_layouts_front_universal:I

    goto :goto_0

    .line 112
    :cond_b
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mFaceBeautyType:I

    if-ne p0, v2, :cond_e

    if-ne v2, v0, :cond_c

    .line 114
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_support_make_up_mode_guide_layouts_back_south_asia:I

    goto :goto_0

    :cond_c
    if-ne v1, v0, :cond_d

    .line 116
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_support_make_up_mode_guide_layouts_back_africa:I

    goto :goto_0

    .line 118
    :cond_d
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_support_make_up_mode_guide_layouts_back_universal:I

    goto :goto_0

    :cond_e
    if-ne v2, v0, :cond_f

    .line 122
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_guide_layouts_back_south_asia:I

    goto :goto_0

    :cond_f
    if-ne v1, v0, :cond_10

    .line 124
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_guide_layouts_back_africa:I

    goto :goto_0

    .line 126
    :cond_10
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_guide_layouts_back_universal:I

    :goto_0
    return p0
.end method


# virtual methods
.method public createFeature(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 34
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_interactive_setting_ui_entries:I

    .line 36
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeInteractiveSettingUIEntries([Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_advanced_setting_ui_entries:I

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSettingUIEntries([Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_advanced_top_bar_setting_ui_entries:I

    .line 40
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_preference_setting_ui_entries:I

    .line 42
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPreferenceSettingUIEntries([Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->getModeGuideLayoutsArrayId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeGuideLayoutsArrayId(I)V

    .line 45
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    .line 46
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "is_support_makeup"

    invoke-static {v1, v3, v2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 47
    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_support_algos:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSupportAlgos([I)V

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setAeAfLockSupport(Z)V

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 3

    .line 145
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 146
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->face_beauty_mode_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_beautyface_south_asia:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_make_up:I

    :goto_0
    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    .line 149
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFeatureResource tile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method protected currentModeSupportFrontWideCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected currentModeSupportTeleCamera()Z
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/makeup/R$bool;->makeup_mode_support_tele_camera:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected currentModeSupportWideCamera()Z
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/makeup/R$bool;->makeup_mode_support_wide_camera:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 140
    const-class p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 135
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method
