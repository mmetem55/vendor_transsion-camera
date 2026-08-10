.class public Lcom/transsion/camera/ui/setting/zoom/ZoomUI;
.super Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;
.source "ZoomUI.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method
