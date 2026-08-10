.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUIEntry$VideoFaceBeautySettingGuideItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;
.source "VideoFaceBeautySettingUIEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUIEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoFaceBeautySettingGuideItemUI"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;-><init>(ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_mu_face_beauty"

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public shouldShow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
