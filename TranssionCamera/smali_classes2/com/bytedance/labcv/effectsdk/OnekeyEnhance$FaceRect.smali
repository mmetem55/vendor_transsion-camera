.class public Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;
.super Ljava/lang/Object;
.source "OnekeyEnhance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;
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

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;->top:I

    .line 196
    iput p2, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;->left:I

    .line 197
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;->right:I

    .line 198
    iput p4, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;->bottom:I

    return-void
.end method
