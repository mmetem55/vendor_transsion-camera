.class public Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;
.super Ljava/lang/Object;
.source "IBlurRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/gles/render/IBlurRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurParam"
.end annotation


# instance fields
.field public final mBlurOffset:I

.field public final mBlurRadius:I

.field public final mRatio:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 28
    iput v0, p0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mRatio:I

    const/16 v0, 0xf

    .line 29
    iput v0, p0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurRadius:I

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurOffset:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mRatio:I

    const/16 p1, 0xf

    .line 35
    iput p1, p0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurRadius:I

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurOffset:I

    return-void
.end method
