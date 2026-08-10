.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "VideoFaceBeautyOptionUIEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 3

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionItemUI;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0
.end method
