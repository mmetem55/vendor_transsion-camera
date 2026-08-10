.class public abstract Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;
.super Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;
.source "ThumbShapeExt.java"


# instance fields
.field private final mProgressTraits:Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)V

    .line 21
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->mProgressTraits:Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;

    return-void
.end method


# virtual methods
.method protected getMax()I
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->mProgressTraits:Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;->traitMax()I

    move-result p0

    return p0
.end method

.method protected getMin()I
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->mProgressTraits:Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;->traitMin()I

    move-result p0

    return p0
.end method

.method protected getProgress()I
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->mProgressTraits:Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;->traitProgress()I

    move-result p0

    return p0
.end method
