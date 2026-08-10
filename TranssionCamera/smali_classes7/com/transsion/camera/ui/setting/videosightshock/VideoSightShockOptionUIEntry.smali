.class public Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockOptionUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "VideoSightShockOptionUIEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 3

    .line 17
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockOptionItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockOptionUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockOptionUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockOptionItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0
.end method
