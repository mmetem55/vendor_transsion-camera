.class Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;
.super Ljava/lang/Object;
.source "WideSelfieMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateUri(Landroid/net/Uri;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "updateUri uri is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    return-void
.end method

.method public updateView([B)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1600(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "updateView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1700(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;[B)V

    return-void
.end method
