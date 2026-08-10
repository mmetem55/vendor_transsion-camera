.class public Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;
.super Ljava/lang/Object;
.source "BefFaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefFaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceAttri"
.end annotation


# instance fields
.field age:F

.field attractive:F

.field boy_prob:F

.field confuse_prob:F

.field exp_probs:[F

.field expression_type:I

.field happy_score:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 383
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->age:F

    .line 384
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->boy_prob:F

    .line 385
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->attractive:F

    .line 386
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->happy_score:F

    const/4 v0, 0x0

    .line 387
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->expression_type:I

    return-void
.end method


# virtual methods
.method public getAge()F
    .locals 0

    .line 392
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->age:F

    return p0
.end method

.method public getAttractive()F
    .locals 0

    .line 424
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->attractive:F

    return p0
.end method

.method public getBoy_prob()F
    .locals 0

    .line 400
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->boy_prob:F

    return p0
.end method

.method public getConfuseProb()F
    .locals 0

    .line 442
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->confuse_prob:F

    return p0
.end method

.method public getExp_probs()[F
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->exp_probs:[F

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [F

    :cond_0
    return-object p0
.end method

.method public getExpression_type()I
    .locals 0

    .line 416
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->expression_type:I

    return p0
.end method

.method public getHappy_score()F
    .locals 0

    .line 408
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->happy_score:F

    return p0
.end method

.method public setAge(F)V
    .locals 0

    .line 396
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->age:F

    return-void
.end method

.method public setAttractive(F)V
    .locals 0

    .line 428
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->attractive:F

    return-void
.end method

.method public setBoy_prob(F)V
    .locals 0

    .line 404
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->boy_prob:F

    return-void
.end method

.method public setExp_probs([F)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->exp_probs:[F

    return-void
.end method

.method public setExpression_type(I)V
    .locals 0

    .line 420
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->expression_type:I

    return-void
.end method

.method public setHappy_score(F)V
    .locals 0

    .line 412
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;->happy_score:F

    return-void
.end method
