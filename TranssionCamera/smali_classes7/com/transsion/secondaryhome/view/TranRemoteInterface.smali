.class public interface abstract Lcom/transsion/secondaryhome/view/TranRemoteInterface;
.super Ljava/lang/Object;
.source "TranRemoteInterface.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# virtual methods
.method public getWidgetId()I
    .locals 1

    .line 79
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 80
    check-cast p0, Landroid/view/View;

    const-class v0, Landroid/appwidget/AppWidgetHostView;

    invoke-static {p0, v0}, Lcom/transsion/secondaryhome/RemoteLayoutInflater;->fastFindViewsByClass(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p0

    .line 81
    instance-of v0, p0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_0

    .line 82
    check-cast p0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onActivityPause()V
.end method

.method public abstract onActivityResume()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDismiss()V
.end method

.method public onEvent(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract onPreShow()V
.end method

.method public onRemoteReceive(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract onShow()V
.end method
