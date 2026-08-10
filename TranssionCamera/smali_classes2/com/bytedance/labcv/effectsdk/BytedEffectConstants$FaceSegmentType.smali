.class public Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceSegmentType;
.super Ljava/lang/Object;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceSegmentType"
.end annotation


# static fields
.field public static final BEF_FACE_FACE_MASK:I = 0x3

.field public static final BEF_FACE_MOUTH_MASK:I = 0x1

.field public static final BEF_FACE_TEETH_MASK:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;


# direct methods
.method public constructor <init>(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceSegmentType;->this$0:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
