.class public Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DetectMode;
.super Ljava/lang/Object;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectMode"
.end annotation


# static fields
.field public static final BEF_DETECT_MODE_IMAGE:I = 0x40000

.field public static final BEF_DETECT_MODE_IMAGE_SLOW:I = 0x80000

.field public static final BEF_DETECT_MODE_VIDEO:I = 0x20000

.field public static final BEF_DETECT_MODE_VIDEO_SLOW:I = 0x10000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
