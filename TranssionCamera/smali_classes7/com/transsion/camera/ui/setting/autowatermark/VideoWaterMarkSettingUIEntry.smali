.class public Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkSettingUIEntry;
.super Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUIEntry;
.source "VideoWaterMarkSettingUIEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUIEntry;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .locals 2

    .line 15
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method
