.class public Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;
.super Ljava/lang/Object;
.source "BefFaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefFaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceMaskInfo"
.end annotation


# instance fields
.field public ID:I

.field public mask:[B

.field public mask_size:I

.field public warp_mat:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
