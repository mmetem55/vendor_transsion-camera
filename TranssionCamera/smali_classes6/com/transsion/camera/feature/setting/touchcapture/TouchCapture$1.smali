.class Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture$1;
.super Ljava/lang/Object;
.source "TouchCapture.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture$1;->this$0:Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture$1;->this$0:Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->access$000(Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture$1;->this$0:Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->access$100(Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;)V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 0

    return-void
.end method
