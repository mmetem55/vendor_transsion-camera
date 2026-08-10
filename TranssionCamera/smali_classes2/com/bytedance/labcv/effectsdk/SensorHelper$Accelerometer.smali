.class Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;
.super Ljava/lang/Object;
.source "SensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/SensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Accelerometer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Accelerometer"


# instance fields
.field private mAlbumOrientationEventListener:Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;

.field private mOrientation:I

.field final synthetic this$0:Lcom/bytedance/labcv/effectsdk/SensorHelper;


# direct methods
.method public constructor <init>(Lcom/bytedance/labcv/effectsdk/SensorHelper;Landroid/content/Context;)V
    .locals 1

    .line 189
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;->this$0:Lcom/bytedance/labcv/effectsdk/SensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 186
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;->mOrientation:I

    .line 190
    new-instance p1, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;-><init>(Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;->mAlbumOrientationEventListener:Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;

    .line 191
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;->mAlbumOrientationEventListener:Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    const-string p0, "Accelerometer"

    const-string p1, "Can\'t Detect Orientation"

    .line 194
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$700(Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;)I
    .locals 0

    .line 183
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;->mOrientation:I

    return p0
.end method

.method static synthetic access$702(Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;I)I
    .locals 0

    .line 183
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;->mOrientation:I

    return p1
.end method


# virtual methods
.method public getDirection()I
    .locals 0

    .line 199
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;->mOrientation:I

    return p0
.end method
