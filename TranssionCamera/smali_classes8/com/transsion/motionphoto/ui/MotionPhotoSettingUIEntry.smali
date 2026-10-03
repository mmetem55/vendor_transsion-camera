.class public Lcom/transsion/motionphoto/ui/MotionPhotoSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "MotionPhotoSettingUIEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 13
    return-void
.end method


# virtual methods
.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .registers 4

    .line 17
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    new-instance v1, Lcom/transsion/motionphoto/ui/MotionPhotoSettingUISpec;

    iget-object v2, p0, Lcom/transsion/motionphoto/ui/MotionPhotoSettingUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/motionphoto/ui/MotionPhotoSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 18
    iput-object v0, p0, Lcom/transsion/motionphoto/ui/MotionPhotoSettingUIEntry;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 19
    return-object v0
.end method
