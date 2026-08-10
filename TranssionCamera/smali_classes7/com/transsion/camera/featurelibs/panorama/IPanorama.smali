.class public interface abstract Lcom/transsion/camera/featurelibs/panorama/IPanorama;
.super Ljava/lang/Object;
.source "IPanorama.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;,
        Lcom/transsion/camera/featurelibs/panorama/IPanorama$ResultCode;,
        Lcom/transsion/camera/featurelibs/panorama/IPanorama$Direction;,
        Lcom/transsion/camera/featurelibs/panorama/IPanorama$Command;
    }
.end annotation


# virtual methods
.method public abstract config(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z
.end method

.method public abstract init(Z)Z
.end method

.method public abstract process(ILandroid/util/Pair;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[B>;)V"
        }
    .end annotation
.end method

.method public abstract reset()Z
.end method

.method public abstract setCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V
.end method

.method public abstract unInit()Z
.end method
