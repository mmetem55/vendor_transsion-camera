.class public Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;
.super Ljava/lang/Object;
.source "MyTexture.java"


# instance fields
.field public height:I

.field public isIdle:Z

.field public isTexToDraw:Z

.field public texId:I

.field public texType:I

.field public width:I


# direct methods
.method constructor <init>(IIII)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isTexToDraw:Z

    .line 12
    iput p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    .line 13
    iput p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texType:I

    .line 14
    iput p3, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->width:I

    .line 15
    iput p4, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->height:I

    return-void
.end method
