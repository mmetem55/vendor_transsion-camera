.class public Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;
.super Ljava/lang/Object;
.source "LuminanceInfo.java"


# instance fields
.field private mAdjustSupport:Z

.field private mMaxValue:I

.field private mMinValue:I

.field private mValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maxValue()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mMaxValue:I

    return p0
.end method

.method public minValue()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mMinValue:I

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mAdjustSupport:Z

    .line 26
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mMinValue:I

    .line 27
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mMaxValue:I

    .line 28
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mValue:I

    return-void
.end method

.method public support()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mAdjustSupport:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LuminanceInfo{mAdjustSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mAdjustSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMinValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mMinValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mMaxValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mValue:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateRange(II)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mMinValue:I

    .line 41
    iput p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mMaxValue:I

    return-void
.end method

.method public updateSupport(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mAdjustSupport:Z

    return-void
.end method

.method public updateValue(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mValue:I

    return-void
.end method

.method public value()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->mValue:I

    return p0
.end method
