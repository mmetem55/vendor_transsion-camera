.class public interface abstract Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;
.super Ljava/lang/Object;
.source "IModuleOperator.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;
.implements Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;
.implements Lcom/transsion/camera/feature/arcore/manager/IRendererOperator;
.implements Lcom/transsion/camera/feature/arcore/manager/IBackgroundOperator;


# virtual methods
.method public abstract getCurrentModuleId()I
.end method

.method public abstract getCurrentRender()Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;
.end method

.method public abstract getLastModuleId()I
.end method

.method public abstract isModuleChanging()Z
.end method

.method public abstract moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;I)I
.end method

.method public abstract moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;Z)I
.end method
