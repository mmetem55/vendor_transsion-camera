.class public Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraInfo;
.super Ljava/lang/Object;
.source "BefSlamInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefSlamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlamCameraInfo"
.end annotation


# instance fields
.field public cameraIntrinsic:Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraIntrinsic;

.field public color:I

.field public disable_internal_time_delay:I

.field public easyInit:I

.field public enableFusion:I

.field public height:I

.field public horizontal_fov:F

.field public isFront:I

.field public isVideo:I

.field public level:I

.field public low_texture_enhanced:Z

.field public orienation:I

.field public resolution:I

.field public runGba:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
