.class public Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaterMarkParameter"
.end annotation


# instance fields
.field mId:I

.field mModeType:I

.field mOrientation:I

.field mPictureSize:Landroid/util/Size;

.field mStartX:I

.field mStartY:I

.field mWaterMark:Landroid/graphics/Bitmap;

.field mWaterMarkCopy:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;IIIILandroid/util/Size;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1047
    iput p1, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mId:I

    .line 1048
    iput p3, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mStartX:I

    .line 1049
    iput p4, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mStartY:I

    .line 1050
    iput p5, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mOrientation:I

    .line 1051
    iput-object p2, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mWaterMark:Landroid/graphics/Bitmap;

    .line 1052
    iput-object p7, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mPictureSize:Landroid/util/Size;

    .line 1053
    iput p6, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mModeType:I

    return-void
.end method


# virtual methods
.method public getModeType()I
    .locals 0

    .line 1099
    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mModeType:I

    return p0
.end method

.method public getWaterMark()Landroid/graphics/Bitmap;
    .locals 3

    .line 1089
    iget-object v0, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mWaterMarkCopy:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mWaterMarkCopy:Landroid/graphics/Bitmap;

    return-object p0

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mWaterMark:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mWaterMark:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mWaterMarkCopy:Landroid/graphics/Bitmap;

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
