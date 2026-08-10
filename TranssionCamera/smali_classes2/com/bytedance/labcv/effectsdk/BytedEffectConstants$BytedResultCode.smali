.class public Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$BytedResultCode;
.super Ljava/lang/Object;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytedResultCode"
.end annotation


# static fields
.field public static final BEF_RESULT_FAIL:I = -0x1

.field public static final BEF_RESULT_FAIL_DATA_ERROR:I = -0x3

.field public static final BEF_RESULT_FILE_NOT_FIND:I = -0x2

.field public static final BEF_RESULT_INVALID_HANDLE:I = -0x4

.field public static final BEF_RESULT_INVALID_IMAGE_FORMAT:I = -0x7

.field public static final BEF_RESULT_INVALID_LICENSE:I = -0x72

.field public static final BEF_RESULT_MODEL_LOAD_FAILURE:I = -0x8

.field public static final BEF_RESULT_SUC:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
