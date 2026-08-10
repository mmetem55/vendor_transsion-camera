.class Lcom/transsion/camera/feature/common/BaseCapture$4;
.super Ljava/lang/Object;
.source "BaseCapture.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$4;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 3

    .line 330
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$4;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$300(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$4;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$300(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;->updateUri(Landroid/net/Uri;)V

    .line 334
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$4;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$600(Lcom/transsion/camera/feature/common/BaseCapture;)V

    .line 335
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    return-void
.end method
