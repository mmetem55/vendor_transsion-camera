.class public Lcom/transsion/camera/app/common/mode/ProcesserParameters;
.super Ljava/lang/Object;
.source "ProcesserParameters.java"


# instance fields
.field private mIsoDoubled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ProcesserParameters;->mIsoDoubled:Z

    return-void
.end method


# virtual methods
.method public isIsoDoubled()Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ProcesserParameters;->mIsoDoubled:Z

    return p0
.end method

.method public setIsoDoubled(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ProcesserParameters;->mIsoDoubled:Z

    return-void
.end method
