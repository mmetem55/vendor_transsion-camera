.class public Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "VideoQualitySettingUISpec.java"


# instance fields
.field private mResources:Landroid/content/res/Resources;

.field private mSupport:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_video_quality"

    .line 28
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method protected init(Landroid/content/res/Resources;)V
    .locals 1

    .line 40
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isHighFPSSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mSupport:Z

    .line 41
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    const p0, 0x7f03012a

    .line 61
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 0

    const p0, 0x7f03012c

    .line 71
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    const p0, 0x7f03012d

    .line 66
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .locals 0

    const p0, 0x7f090410

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const p0, 0x7f080926

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f100374

    .line 46
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
