.class public interface abstract Lcom/transsion/secondaryhome/res/ResWorkerInterface;
.super Ljava/lang/Object;
.source "ResWorkerInterface.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# virtual methods
.method public abstract getAssetManager(Landroid/content/Context;)Landroid/content/res/AssetManager;
.end method

.method public abstract getCurrentContext(Landroid/content/Context;)Landroid/content/Context;
.end method

.method public abstract getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
.end method

.method public abstract getResId(Landroid/content/Context;IILjava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation
.end method

.method public abstract getResources(Landroid/content/Context;)Landroid/content/res/Resources;
.end method
