.class public Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;
.super Ljava/lang/Object;
.source "BefGeneralObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectRect"
.end annotation


# instance fields
.field private bottom:I

.field private left:I

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->left:I

    .line 58
    iput p2, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->top:I

    .line 59
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->right:I

    .line 60
    iput p4, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->bottom:I

    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 0

    .line 76
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->bottom:I

    return p0
.end method

.method public getLeft()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->left:I

    return p0
.end method

.method public getRight()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->right:I

    return p0
.end method

.method public getTop()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->top:I

    return p0
.end method

.method public toRect()Landroid/graphics/Rect;
    .locals 4

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->left:I

    iget v2, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->top:I

    iget v3, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->right:I

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->bottom:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectRect{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
