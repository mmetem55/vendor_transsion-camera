.class Lcom/transsion/camera/feature/setting/hdr/Hdr$2;
.super Ljava/lang/Object;
.source "Hdr.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/hdr/Hdr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/hdr/Hdr;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$2;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 266
    invoke-static {}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStarted] +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$2;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->access$300(Lcom/transsion/camera/feature/setting/hdr/Hdr;)Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$2;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->access$300(Lcom/transsion/camera/feature/setting/hdr/Hdr;)Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;->onPreviewStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .line 261
    invoke-static {}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "[onPreviewStopped] +"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
