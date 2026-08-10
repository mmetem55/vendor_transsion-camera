.class public interface abstract Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;
.super Ljava/lang/Object;
.source "IModeSwitchPolicy.java"


# virtual methods
.method public abstract getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getDefaultMode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getModeNames(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getRestoreModeByFacing(I)Ljava/lang/String;
.end method

.method public abstract getSmartModeNames(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isSmartModeOrder()Z
.end method

.method public abstract saveARCorePosition([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract setSourceIntent(Landroid/content/Intent;)V
.end method

.method public abstract updateMetaInfo(Landroid/os/Bundle;)V
.end method

.method public abstract updateSmartModeNames()V
.end method
