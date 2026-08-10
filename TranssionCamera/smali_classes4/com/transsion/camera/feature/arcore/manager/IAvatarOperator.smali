.class public interface abstract Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;
.super Ljava/lang/Object;
.source "IAvatarOperator.java"


# virtual methods
.method public abstract getAvatarPTAList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentAvatarIndex()I
.end method

.method public abstract getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;
.end method

.method public abstract getItemIndexFromController(Ljava/lang/String;)I
.end method

.method public abstract resetAll(Z)V
.end method

.method public abstract resetAllMin(Z)V
.end method

.method public abstract resetAllTop(Z)V
.end method

.method public abstract runOnFuItemThread(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;Z)V
.end method

.method public abstract setItemParamToController(Ljava/lang/String;D)V
.end method

.method public abstract setItemParamToController(Ljava/lang/String;[D)V
.end method

.method public abstract updateAvatarPTA(IZ)V
.end method

.method public abstract updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Ljava/lang/Runnable;)V
.end method

.method public abstract updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Z)V
.end method

.method public abstract updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;ZLjava/lang/Runnable;)V
.end method

.method public abstract updateAvatarPTA(Ljava/lang/Runnable;)V
.end method

.method public abstract updateAvatarPTAIndex(I)V
.end method
