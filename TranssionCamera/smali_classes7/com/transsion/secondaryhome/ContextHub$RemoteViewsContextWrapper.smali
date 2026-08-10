.class public Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/secondaryhome/ContextHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteViewsContextWrapper"
.end annotation


# instance fields
.field private final mContextForResources:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 162
    iput-object p2, p0, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdkPreviewContext ===> getAssets  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHub"

    invoke-static {v1, v0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdkPreviewContext ===> getAssets call "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p0, p0, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRealApplicationContext()Landroid/content/Context;
    .locals 0

    .line 180
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    return-object p0
.end method

.method public isRestricted()Z
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result p0

    return p0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 2

    .line 168
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteViewsContextWrapper unbindService err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContextHub"

    invoke-static {v0, p1, p0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
