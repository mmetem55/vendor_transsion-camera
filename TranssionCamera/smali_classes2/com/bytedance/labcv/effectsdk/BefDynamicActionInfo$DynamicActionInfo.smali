.class public Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;
.super Ljava/lang/Object;
.source "BefDynamicActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicActionInfo"
.end annotation


# instance fields
.field private action:I

.field private actionDuration:I

.field private actionScore:F

.field private id:I

.field private personId:I

.field private rect:Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefRect;

.field private rectStl:Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefRect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->action:I

    return p0
.end method

.method public getActionDuration()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->actionDuration:I

    return p0
.end method

.method public getActionScore()F
    .locals 0

    .line 59
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->actionScore:F

    return p0
.end method

.method public getId()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->id:I

    return p0
.end method

.method public getPersonId()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->personId:I

    return p0
.end method

.method public getRect()Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefRect;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->rect:Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefRect;

    return-object p0
.end method

.method public getRectStl()Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefRect;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->rectStl:Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefRect;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicActionInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", personId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->personId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->rect:Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefRect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rectStl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->rectStl:Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefRect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->actionDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;->actionScore:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
