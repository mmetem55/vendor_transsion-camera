.class public Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;
.super Ljava/lang/Object;
.source "BefFaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefFaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceRect"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->left:I

    .line 140
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->right:I

    .line 141
    iput p2, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->top:I

    .line 142
    iput p4, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->bottom:I

    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 0

    .line 174
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->bottom:I

    return p0
.end method

.method public getLeft()I
    .locals 0

    .line 150
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->left:I

    return p0
.end method

.method public getRight()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->right:I

    return p0
.end method

.method public getTop()I
    .locals 0

    .line 166
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->top:I

    return p0
.end method

.method public setBottom(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->bottom:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->left:I

    return-void
.end method

.method public setRight(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->right:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->top:I

    return-void
.end method

.method public toRect()Landroid/graphics/Rect;
    .locals 4

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->left:I

    iget v2, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->top:I

    iget v3, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->right:I

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->bottom:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceRect{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
