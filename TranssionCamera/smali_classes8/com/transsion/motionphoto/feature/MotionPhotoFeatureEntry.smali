.class public Lcom/transsion/motionphoto/feature/MotionPhotoFeatureEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "MotionPhotoFeatureEntry.java"


# instance fields
.field private volatile mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 16
    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/transsion/motionphoto/feature/MotionPhotoFeatureEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_d

    .line 21
    new-instance v0, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;

    iget-object v1, p0, Lcom/transsion/motionphoto/feature/MotionPhotoFeatureEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/motionphoto/feature/MotionPhotoFeatureEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 23
    :cond_d
    iget-object v0, p0, Lcom/transsion/motionphoto/feature/MotionPhotoFeatureEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-object v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 2

    .line 28
    const-class v0, Lcom/transsion/motionphoto/feature/MotionPhotoFeatureEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .line 33
    const-class v0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object v0
.end method
