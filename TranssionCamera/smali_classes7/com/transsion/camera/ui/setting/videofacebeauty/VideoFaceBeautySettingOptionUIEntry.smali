.class public Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautySettingOptionUIEntry;
.super Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautySettingUIEntry;
.source "VideoFaceBeautySettingOptionUIEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautySettingUIEntry;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 3

    .line 15
    new-instance v0, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyOptionItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    new-instance v2, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautySettingUISpec;

    invoke-direct {v2, v1}, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautySettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyOptionItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0
.end method
