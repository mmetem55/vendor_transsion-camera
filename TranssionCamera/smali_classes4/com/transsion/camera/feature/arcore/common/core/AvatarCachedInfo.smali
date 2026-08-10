.class public final Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;
.super Ljava/lang/Object;
.source "AvatarCachedInfo.java"


# instance fields
.field public final avatar:Lcom/faceunity/pta_art/entity/AvatarPTA;

.field public final completeListener:Ljava/lang/Runnable;

.field public final currentModeId:I

.field public final reloadHead:Z


# direct methods
.method public constructor <init>(Lcom/faceunity/pta_art/entity/AvatarPTA;ZILjava/lang/Runnable;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;->avatar:Lcom/faceunity/pta_art/entity/AvatarPTA;

    .line 13
    iput-boolean p2, p0, Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;->reloadHead:Z

    .line 14
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;->currentModeId:I

    .line 15
    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;->completeListener:Ljava/lang/Runnable;

    return-void
.end method
