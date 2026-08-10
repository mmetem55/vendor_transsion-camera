.class public Lcom/transsion/camera/feature/setting/macro/Macro;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Macro.java"


# static fields
.field private static final RATIO_1_1:D = 1.0

.field private static final RATIO_4_3:D = 1.3333333333333333

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsDistortionNeedShow:Z

.field private mIsMacroSupportZoom:Z

.field private mIsWideCamUISupport:Z

.field private mIsWideOrMacroCamera:Z

.field private mMacroParameterConfig:Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/macro/Macro;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideOrMacroCamera:Z

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsDistortionNeedShow:Z

    .line 165
    new-instance v0, Lcom/transsion/camera/feature/setting/macro/Macro$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/macro/Macro$1;-><init>(Lcom/transsion/camera/feature/setting/macro/Macro;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/macro/Macro;)Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mMacroParameterConfig:Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/macro/Macro;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/macro/Macro;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideOrMacroCamera:Z

    return p0
.end method

.method private addFlashOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "key_flash"

    const-string v0, "off"

    .line 309
    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_flash_facade"

    .line 310
    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addHdrOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "key_hdr"

    const-string v0, "off"

    .line 323
    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addMacroTorchOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "key_macro_torch"

    const-string v0, "off"

    .line 297
    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addZoomRangeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 335
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideCamUISupport:Z

    const-string v0, "value_zoom_support_macro_active"

    const-string v1, "key_camera_zoom"

    if-eqz p0, :cond_0

    const-string p0, "150,250"

    .line 336
    invoke-virtual {p1, v1, v0, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "100,200"

    .line 338
    invoke-virtual {p1, v1, v0, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getCurrentRatio()D
    .locals 2

    const-string v0, "key_picture_size"

    .line 259
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x78

    .line 260
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 261
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    div-int/2addr v0, p0

    int-to-double v0, v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private handlerRestriction(Z)V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mMacroParameterConfig:Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->isMacroTorchSupport()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 199
    :goto_0
    sget-object v2, Lcom/transsion/camera/feature/setting/macro/Macro;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handlerRestriction] isWideCamera:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isMacroTorchSupport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " getValue():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mIsDistortionNeedShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsDistortionNeedShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 201
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsDistortionNeedShow:Z

    const-string v2, "head_value_on_distortion_off"

    const-string v3, "on"

    if-eqz p1, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 203
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideCamUISupport:Z

    if-eqz p1, :cond_1

    .line 204
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    goto :goto_1

    .line 206
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string v2, "head_value_on_distortion_off_2m"

    invoke-virtual {p1, v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 208
    :goto_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->addHdrOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    if-eqz v0, :cond_6

    .line 210
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->addFlashOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->restoreMacroTorchRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_3

    .line 214
    :cond_2
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string v2, "head_value_off"

    invoke-virtual {p1, v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 215
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->restoreHdrRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    if-eqz v0, :cond_6

    .line 217
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->restoreFlashRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 218
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->addMacroTorchOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_3

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 225
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 226
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->addHdrOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_3

    .line 228
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 229
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string v0, "head_value_off_distortion_off"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    goto :goto_2

    .line 231
    :cond_5
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string v0, "head_value_off_distortion_on"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 233
    :goto_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->restoreHdrRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_6
    :goto_3
    if-eqz p1, :cond_9

    .line 238
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroSupportZoom:Z

    if-eqz v0, :cond_7

    const-string v0, "key_volume_key"

    .line 240
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    const-string v0, "key_camera_zoom"

    .line 241
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->addZoomRangeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 246
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    .line 250
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "head_macro_torch_off"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private isCameraFacingFront(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    .line 94
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    .line 99
    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p0, v0

    :catch_0
    :cond_0
    return p0
.end method

.method private isDistortionNeedShow(Landroid/content/Context;)Z
    .locals 1

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "is_distortion_correction_need_show"

    .line 276
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isFullScreen()Z
    .locals 6

    .line 271
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getCurrentRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v2, v0, v2

    .line 272
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, v2, v4

    if-ltz p0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p0, v0, v4

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMacroSupportZoom(Landroid/content/Context;)Z
    .locals 1

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "is_macro_support_zoom"

    .line 281
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isWideCamUISupport(Landroid/content/Context;)Z
    .locals 1

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "is_widecam_item_ui_support_in_widecam"

    .line 286
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isWideSupportZoom(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "zoom_style_type"

    .line 291
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private restoreFlashRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "key_flash"

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_flash_facade"

    .line 317
    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private restoreHdrRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "key_hdr"

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private restoreMacroTorchRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "key_macro_torch"

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
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

    const-string p0, "key_macro"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mMacroParameterConfig:Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/macro/Macro;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mMacroParameterConfig:Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mMacroParameterConfig:Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 109
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

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->isDistortionNeedShow(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsDistortionNeedShow:Z

    .line 59
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->isWideCamUISupport(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideCamUISupport:Z

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->isMacroSupportZoom(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroSupportZoom:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
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

    .line 70
    sget-object v0, Lcom/transsion/camera/feature/setting/macro/Macro;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "default value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,cameraId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getMacroCameraId()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideOrMacroCamera:Z

    if-eqz p1, :cond_4

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_2

    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/macro/Macro;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 83
    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 86
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initializeValue], mDataStore:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 8

    .line 137
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/transsion/camera/feature/setting/macro/Macro;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged MacroParameterConfig requestChangeCommand value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 142
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideOrMacroCamera:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->handlerRestriction(Z)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mMacroParameterConfig:Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    if-eqz v0, :cond_1

    const-string v1, "on"

    .line 144
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideOrMacroCamera:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->refreshToUI(ZZ)V

    :cond_1
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    if-nez p2, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideOrMacroCamera:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->handlerRestriction(Z)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    return-void
.end method
