.class public interface abstract Lcom/transsion/secondaryhome/LocalStubViewInterface;
.super Ljava/lang/Object;
.source "LocalStubViewInterface.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 43
    invoke-interface {p0}, Lcom/transsion/secondaryhome/LocalStubViewInterface;->getRemoteContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemoteContext()Landroid/content/Context;
    .locals 1

    .line 27
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 28
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 29
    instance-of v0, p0, Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;

    invoke-virtual {p0}, Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;->getRemoteContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
