.class public Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;
.super Ljava/lang/Object;
.source "BefSlamInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefSlamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlamPlane"
.end annotation


# instance fields
.field public boundary:[F

.field public hasPlane:I

.field public normal:[F

.field public offset:F

.field public origin:[F

.field public originWorld:[F

.field public planePointsIds:[I


# direct methods
.method public constructor <init>(I[FF[F[F[F[I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;->hasPlane:I

    .line 27
    iput-object p2, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;->normal:[F

    .line 28
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;->offset:F

    .line 29
    iput-object p4, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;->originWorld:[F

    .line 30
    iput-object p5, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;->origin:[F

    .line 31
    iput-object p6, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;->boundary:[F

    .line 32
    iput-object p7, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;->planePointsIds:[I

    return-void
.end method
