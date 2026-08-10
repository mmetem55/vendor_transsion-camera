.class public Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceSegmentConfig;
.super Ljava/lang/Object;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceSegmentConfig"
.end annotation


# static fields
.field public static final BEFF_MOBILE_FACE_REST_MASK:I = 0x500

.field public static final BEF_MOBILE_FACE_MOUTH_MASK:I = 0x300

.field public static final BEF_MOBILE_FACE_TEETH_MASK:I = 0x300


# instance fields
.field final synthetic this$0:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;


# direct methods
.method public constructor <init>(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceSegmentConfig;->this$0:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
