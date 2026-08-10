.class public interface abstract Lcom/transsion/ga/AthenaAnalytics$ConfigListener;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ga/AthenaAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigListener"
.end annotation


# virtual methods
.method public abstract onSyncSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/TidConfigBean;",
            ">;)V"
        }
    .end annotation
.end method
