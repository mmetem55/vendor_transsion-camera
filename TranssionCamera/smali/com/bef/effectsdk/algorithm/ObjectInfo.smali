.class public Lcom/bef/effectsdk/algorithm/ObjectInfo;
.super Ljava/lang/Object;
.source "ObjectInfo.java"


# instance fields
.field private bbox_bottom:I

.field private bbox_left:I

.field private bbox_right:I

.field private bbox_top:I

.field private label:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->label:I

    .line 17
    iput v0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_left:I

    .line 18
    iput v0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_top:I

    .line 19
    iput v0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_right:I

    .line 20
    iput v0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_bottom:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->label:I

    .line 25
    iput p2, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_left:I

    .line 26
    iput p3, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_top:I

    .line 27
    iput p4, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_right:I

    .line 28
    iput p5, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_bottom:I

    return-void
.end method


# virtual methods
.method public getBBoxBottom()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_bottom:I

    return p0
.end method

.method public getBBoxLeft()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_left:I

    return p0
.end method

.method public getBBoxRight()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_right:I

    return p0
.end method

.method public getBboxTop()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_top:I

    return p0
.end method

.method public getLabel()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->label:I

    return p0
.end method

.method public logData()V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectInfo label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->label:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bbox_left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bbox_top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bbox_right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bbox_bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EffectSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBBox(IIII)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_left:I

    .line 37
    iput p2, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_top:I

    .line 38
    iput p3, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_right:I

    .line 39
    iput p4, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_bottom:I

    return-void
.end method

.method public setLabel(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->label:I

    return-void
.end method
