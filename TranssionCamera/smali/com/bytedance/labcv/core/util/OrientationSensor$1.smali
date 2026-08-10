.class Lcom/bytedance/labcv/core/util/OrientationSensor$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/labcv/core/util/OrientationSensor;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x2d

    .line 27
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    .line 28
    invoke-static {}, Lcom/bytedance/labcv/core/util/OrientationSensor;->access$000()I

    move-result p0

    if-eq p1, p0, :cond_1

    .line 29
    invoke-static {p1}, Lcom/bytedance/labcv/core/util/OrientationSensor;->access$002(I)I

    :cond_1
    return-void
.end method
