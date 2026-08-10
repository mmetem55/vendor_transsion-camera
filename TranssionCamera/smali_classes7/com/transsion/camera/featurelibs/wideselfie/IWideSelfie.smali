.class public interface abstract Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;
.super Ljava/lang/Object;
.source "IWideSelfie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;,
        Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$ResultCode;,
        Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$Direction;,
        Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$Command;
    }
.end annotation


# virtual methods
.method public abstract config(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z
.end method

.method public abstract init()Z
.end method

.method public abstract process(ILandroid/util/Pair;[Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[B>;[",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method

.method public abstract reset()Z
.end method

.method public abstract setCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V
.end method

.method public abstract unInit()Z
.end method
