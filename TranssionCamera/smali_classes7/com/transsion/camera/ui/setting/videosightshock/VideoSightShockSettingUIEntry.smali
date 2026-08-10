.class public Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "VideoSightShockSettingUIEntry.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUIEntry;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object v0
.end method
