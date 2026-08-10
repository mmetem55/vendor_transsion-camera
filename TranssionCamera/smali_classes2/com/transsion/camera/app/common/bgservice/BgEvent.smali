.class public Lcom/transsion/camera/app/common/bgservice/BgEvent;
.super Ljava/lang/Object;
.source "BgEvent.java"


# instance fields
.field public mFrameNumber:I

.field public mImgReaderId:I

.field public mStatus:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mImgReaderId:I

    .line 10
    iput p2, p0, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mFrameNumber:I

    .line 11
    iput p3, p0, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mStatus:I

    return-void
.end method
