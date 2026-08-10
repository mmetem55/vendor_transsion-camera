.class public Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;
.super Ljava/lang/Object;
.source "FrontDualFlashInfo.java"


# instance fields
.field private mAdjustSupport:Z

.field public mFrontDualFlashColorTemp:I

.field public mFrontDualFlashStrengthMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    .line 28
    iput p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mAdjustSupport:Z

    return-void
.end method

.method public support()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mAdjustSupport:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LuminanceInfo{mAdjustSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mAdjustSupport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFrontDualFlashColorTemp(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    return-void
.end method

.method public updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V
    .locals 1

    .line 44
    iget v0, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    .line 45
    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    return-void
.end method

.method public updateFrontDualFlashTemLevel(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    return-void
.end method

.method public updateSupport(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mAdjustSupport:Z

    return-void
.end method

.method public value()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
