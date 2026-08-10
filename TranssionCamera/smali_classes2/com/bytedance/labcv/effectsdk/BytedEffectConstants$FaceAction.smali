.class public Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceAction;
.super Ljava/lang/Object;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceAction"
.end annotation


# static fields
.field public static final BEF_BROW_RAISE:I = 0x20

.field public static final BEF_DETECT_FULL:I = 0x7f

.field public static final BEF_EYE_BLINK:I = 0x2

.field public static final BEF_FACE_DETECT:I = 0x1

.field public static final BEF_HEAD_NOD:I = 0x10

.field public static final BEF_HEAD_SHAKE:I = 0x8

.field public static final BEF_MOUTH_AH:I = 0x4

.field public static final BEF_MOUTH_POUT:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
