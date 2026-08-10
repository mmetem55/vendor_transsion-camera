.class Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture$1;
.super Ljava/lang/Object;
.source "FingerprintCapture.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture$1;->this$0:Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture$1;->this$0:Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;->access$000(Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture$1;->this$0:Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;->access$100(Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;)V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 0

    return-void
.end method
