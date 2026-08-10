.class public interface abstract Lcom/transsion/camera/app/common/provider/IFeatureEntry;
.super Ljava/lang/Object;
.source "IFeatureEntry.java"


# virtual methods
.method public abstract createFeature(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract createFeature(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;
.end method

.method public abstract createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
.end method

.method public abstract getFeatureName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/Class;
.end method

.method public abstract initResource()V
.end method

.method public abstract isSupport()Z
.end method

.method public abstract unInitResource()V
.end method

.method public abstract updateFeature(Ljava/lang/Object;Ljava/lang/String;)V
.end method
